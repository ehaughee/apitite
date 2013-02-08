# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

admin = User.create({
  name:     "admin",
  email:    "admin@admin.com",
  username: "admin",
  password: "admin",
  admin:    true
})

user = User.create({
  name:     "test",
  email:    "test@test.com",
  username: "test",
  password: "test"
})


Api.create([
  {
    name:    "Google",
    path:    "http://api.google.com",
    docs:    "http://docs.google.com",
    user_id: user.id
  },
  {
    name:    "Twitter",
    path:    "http://api.twitter.com",
    docs:    "http://docs.twitter.com",
    user_id: user.id
  },
  {
    name:    "Yahoo",
    path:    "http://api.yahoo.com",
    docs:    "http://docs.yahoo.com",
    user_id: user.id
  },
  {
    name:    "Facebook",
    path:    "http://api.facebook.com",
    docs:    "http://docs.facebook.com",
    user_id: user.id
  },
  {
    name:    "Github",
    path:    "http://api.github.com",
    docs:    "http://docs.github.com",
    user_id: user.id
  },
  {
    name:    "StackOverflow",
    path:    "http://api.StackOverflow.com",
    docs:    "http://docs.StackOverflow.com",
    user_id: user.id
  },
  {
    name:    "Wunderground",
    path:    "http://api.Wunderground.com",
    docs:    "http://docs.Wunderground.com",
    user_id: user.id
  },
  {
    name:    "DynDNS",
    path:    "http://api.DynDNS.com",
    docs:    "http://docs.DynDNS.com",
    user_id: user.id
  },
  {
    name:    "FluffData1",
    path:    "http://api.FuffData1.com",
    docs:    "http://docs.FuffData1.com",
    user_id: user.id
  },
  {
    name:    "FluffData2",
    path:    "http://api.FluffData2.com",
    docs:    "http://docs.FluffData2.com",
    user_id: user.id
  },
  {
    name:    "FluffData3",
    path:    "http://api.FluffData3.com",
    docs:    "http://docs.FluffData3.com",
    user_id: user.id
  },
  ])