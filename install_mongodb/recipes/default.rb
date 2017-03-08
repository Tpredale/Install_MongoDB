#
# Cookbook:: install_mongodb
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Create a /etc/yum.repos.d/mongodb.repo file to hold the following configuration information for the MongoDB repository:

template "/etc/yum.repos.d/mongodb.repo" do
  source 'mongodb.repo.erb'
end

package "mongodb-org" do
  action :install
end

service "mongod" do
  action [:start, :enable]
end
