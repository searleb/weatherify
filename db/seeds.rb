User.destroy_all
History.destroy_all
Track.destroy_all

u1 = User.create(:username => 'bill', :avatar => 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xap1/t1.0-9/10153885_10152375270954439_675683235_n.jpg', :password => 'hello', :password_confirmation => 'hello', :is_admin => true)
u2 = User.create(:username => 'ros', :avatar => 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xap1/t31.0-8/1462621_10152034735208798_1991910334_o.jpg', :password => 'hello', :password_confirmation => 'hello')
u3 = User.create(:username => 'geo', :avatar => 'https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xap1/t1.0-9/1186848_10201328911678554_743544912_n.jpg', :password => 'hello', :password_confirmation => 'hello')
u4 = User.create(:username => 'UrBoiObama', :avatar => 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xap1/t1.0-9/1376580_10151878817796749_162570700_n.png', :password => 'hello', :password_confirmation => 'hello')
u5 = User.create(:username => 'IDidntDoItHarris', :avatar => 'https://scontent-a-hkg.xx.fbcdn.net/hphotos-xaf1/t1.0-9/37455_104273966289828_6371451_n.jpg', :password => 'creepin', :password_confirmation => 'creepin')
u6 = User.create(:username => 'WreckinBallz', :avatar => 'http://www.geeksandbeats.com/wp-content/uploads/2014/04/Miley_Cyrus_-_Wrecking_Ball_KISSTHEMGOODBYE_NET_214.jpg', :password => 'hello', :password_confirmation => 'hello')
u7 = User.create(:username => 'SheLetGo', :avatar => 'http://datastore01.rediff.com/h1500-w1500/thumb/69586A645B6D2A2E3131/ok8ssom5ry533own.D.0.Leonardo-DiCaprio-Titanic-3D-Movie-Photo.jpg', :password => 'hello', :password_confirmation => 'hello')
u8 = User.create(:username => 'SpaceOddity', :avatar => 'http://blogs.kqed.org/pop/files/2013/03/tumblr_lkk31u4Oi71qgqw54o1_500.png', :password => 'hello', :password_confirmation => 'hello')
u9 = User.create(:username => 'CannibalSuarez', :avatar => 'http://thesource.com/wp-content/uploads/2014/06/luis_suarez-394988.jpg', :password => 'hello', :password_confirmation => 'hello')

