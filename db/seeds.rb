post_list = [
  [ 'Scary', 'https://www.nytimes.com/2017/06/26/us/politics/senate-health-care-bill-republican.html?hp&action=click&pgtype=Homepage&clickSource=story-heading&module=a-lede-package-region&region=top-news&WT.nav=top-news', '06-27-17', 0 ],
  [ 'Spooky', 'http://www.skeleton.com/', '06-27-17', 0 ],
  [ 'Salty', 'https://www.nytimes.com/2017/06/26/dining/burgerfi-vegan-beyond-burger.html?ref=dining', '06-27-17', 0 ],
  [ 'Sweaty', 'https://www.nytimes.com/2017/06/25/us/extreme-heat-scorches-southern-arizona.html', '06-27-17', 0 ],
]

post_list.each do | title, url, created_at, score |
  Post.create( title: title, url: url, created_at: created_at, score: score )
end
