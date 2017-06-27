Post.destroy_all

post_list = [
  [ 'Scary', 'https://www.nytimes.com/2017/06/26/us/politics/senate-health-care-bill-republican.html?hp&action=click&pgtype=Homepage&clickSource=story-heading&module=a-lede-package-region&region=top-news&WT.nav=top-news', '2017-27-06', 0 ],
  [ 'Spooky', 'http://www.skeleton.com/', '2017-27-06', 0 ],
  [ 'Salty', 'https://www.nytimes.com/2017/06/26/dining/burgerfi-vegan-beyond-burger.html?ref=dining', '2017-27-06', 0 ],
  [ 'Sweaty', 'https://www.nytimes.com/2017/06/25/us/extreme-heat-scorches-southern-arizona.html', '2017-27-06', 0 ],
  [ 'Stingy', 'https://www.oldstuff.com', '2017-04-04', 0 ]
]

post_list.each do | title, url, created_at, score |
  Post.create( title: title, url: url, created_at: created_at, score: score )
end
