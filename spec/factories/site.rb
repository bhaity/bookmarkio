FactoryGirl.define do
  factory :site do
    domain "nme.com"
    ignore do
      bookmarks_count 5
    end
    after(:create) do |site, evaluator|
      create_list(:bookmark, evaluator.bookmarks_count, site: site)
    end
  end
end