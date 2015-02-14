#
# Cookbook Name:: base
# Recipe:: sanitize<F4>users
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
  
# Remove ubuntu user
user "ubuntu" do
  action :remove
end
# Delete ubuntu's home directory
directory "/home/ubuntu" do
  action    :delete
  recursive true
end
# Remove ubuntu group
group "ubuntu" do
  action :remove
end

# Modify principal group for vagrant user
user "vagrant" do
  action :modify
  gid    1100 
end
# Remove vagrant froup
group "vagrant" do
  action :remove
end
# Remove vagrant user
user "vagrant" do
  force  true 
  action :remove
end
# Delete vagrant's home directory
directory "/home/vagrant" do
  action    :delete
  recursive true
end

