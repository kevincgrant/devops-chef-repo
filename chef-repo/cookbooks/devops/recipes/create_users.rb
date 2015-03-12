# default.rb
users = data_bag('users')

users.each do |user_info|
   user = data_bag_item('users', user_info)

   user user['username'] do
      supports :manage_home => true
      comment	user['comment']
      uid	user['uid']
      gid	user['gid']
      home	user['home']
      shell	user['shell']
      password	user['password']
   end
end
