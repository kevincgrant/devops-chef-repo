require 'rubygems'
require 'chef/encrypted_data_bag_item'
 
secret = Chef::EncryptedDataBagItem.load_secret('/root/chef-repo/.chef/data_bag_key')

# User 1
data = {"id" => "user1", "username" => "user1", "comment" => "User 1", "uid" => "1111", "gid" => "users", "home" => "/home/user1/", "shell" => "/bin/bash", "password" => "$1$Itk9plv.$f8s9t2ICRYgplbLFghmdp/"}
encrypted_data = Chef::EncryptedDataBagItem.encrypt_data_bag_item(data, secret)
 
FileUtils.mkpath('/root/chef-repo/data_bags/users')
File.open('/root/chef-repo/data_bags/users/user1.json', 'w') do |f|
  f.print encrypted_data.to_json
end

# User 2
data = {"id" => "user2", "username" => "user2", "comment" => "User 2", "uid" => "1112", "gid" => "users", "home" => "/home/user2/", "shell" => "/bin/bash", "password" => "$1$Itk9plv.$f8s9t2ICRYgplbLFghmdp/"}
encrypted_data = Chef::EncryptedDataBagItem.encrypt_data_bag_item(data, secret)

FileUtils.mkpath('/root/chef-repo/data_bags/users')
File.open('/root/chef-repo/data_bags/users/user2.json', 'w') do |f|
  f.print encrypted_data.to_json
end
