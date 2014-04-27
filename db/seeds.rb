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
	     'http://time.com/77808/university-of-kentucky-alcohol-policy-changing/',
	     'http://mashable.com/2014/04/26/experfy/',
	     'http://mashable.com/2013/01/06/tips-job-interviews/',
	     'http://arstechnica.com/tech-policy/2014/04/facebook-funded-silicon-valley-police-station-with-free-wi-fi-opens/',
	     'http://arstechnica.com/gadgets/2014/04/in-a-world-of-me-first-smart-home-gear-can-smarthubs-make-them-all-play-nice/',
	     'http://arstechnica.com/science/2014/04/reading-human-history-using-ancient-chicken-dna-and-chili-peppers/',
	     'http://arstechnica.com/science/2014/04/smart-leg-brace-locks-and-unlocks-knee-automatically/',
	     'http://www.gamespot.com/articles/is-the-ps4-xbox-one-and-wii-u-console-war-dumb/1100-6419228/',
	     'http://www.gamespot.com/reviews/mario-golf-world-tour/1900-6415740/',
	     'http://www.gamespot.com/articles/street-fighter-assassin-s-fist-teaser-introduces-ken/1100-6419238/',
	     'http://gothamist.com/2014/04/27/photos_single_double_rainbows_over.php',
	     'http://gothamist.com/2014/04/23/best_vegetarian_restaurants_nyc.php',
	     'http://www.businessinsider.com/russian-intelligence-officers-in-eastern-ukraine-2014-4',
	     'http://www.businessinsider.com/lebron-james-michael-jordan-stare-2014-4',
	     'http://www.businessinsider.com/microsoft-digs-up-et-atari-cartridges-2014-4',
	     'http://www.businessinsider.com/therapist-silicon-valley-millionaires-2014-4',
	     'http://www.businessinsider.com/south-korea-pm-resign-2014-4',
	     'http://www.businessinsider.com/fastest-growing-women-led-companies-2014-4',
	     'http://time.com/78320/francis-presides-over-historic-double-canonization/' ]

urls.each do |u|
  Bookmark.create!(url: u)
  puts u
end