# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



urls = [ 'http://mashable.com/2014/04/24/drones-satellite-imagery-art/',
	     'http://techcrunch.com/2014/04/07/us-burns-through-all-high-skill-visas-for-2015-in-less-than-a-week/',
	     'http://railscasts.com/episodes/414-batch-api-requests',
	     'http://mashable.com/2014/04/25/ronald-mcdonald/',
	     'http://mashable.com/2014/04/25/x-class-solar-flare/',
	     'http://mashable.com/2014/04/25/drunk-penguin-gifs/',
	     'http://techcrunch.com/2014/04/04/finally-someone-is-disrupting-the-towel/',
	     'http://techcrunch.com/2014/04/24/a-crate-load-of-data/',
	     'http://railscasts.com/episodes/293-nginx-unicorn',
	     'http://www.buzzfeed.com/jennaguillaume/the-definitive-ranking-of-kates-royal-tour-outfits',
	     'http://www.buzzfeed.com/video/abefg/19-people-having-a-worse-day-at-work-than-you',
	     'http://time.com/77968/pentagon-russia-violated-ukrainian-airspace/',
	     'http://time.com/77024/drone-strikes-al-qaeda-yemen/',
	     'http://time.com/time100-2014/?pcd=hp-magmod',
	     'http://time.com/77531/tinder-college-free-food/',
	     'http://time.com/77808/university-of-kentucky-alcohol-policy-changing/' ]

urls.each do |u|
  Bookmark.create!(url: u)
end