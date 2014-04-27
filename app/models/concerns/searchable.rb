module Searchable
  extend ActiveSupport::Concern

  module ClassMethods
    def searchable_by(*args)
      sql = args.map{|arg| "#{arg} LIKE :query OR"}.join(" ")[0..-4] #create the sql statement from the arguments specified, cut off the last OR
      scope :search, ->(q) do
        where("#{sql}", {query: "%#{q}%"})
      end
    end
  end
end