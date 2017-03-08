#
# Cookbook:: install_mongodb
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Create a /etc/yum.repos.d/mongodb.repo file to hold the following configuration information for the MongoDB repository:

template "/etc/yum.repos.d/mongodb.repo" do
  source 'mongodb.repo.erb'
end

# Install the MongoDB packages and associated tools.
# sudo yum install mongodb-org

package "mongodb-org" do
  action :install
end

# Start MongoDB.
# sudo service mongod start
# ensure that MongoDB will start following a system reboot by issuing the following command:
# sudo chkconfig mongod on

service "mongod" do
  action [:start, :enable]
end
