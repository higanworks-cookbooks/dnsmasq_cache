#
# Cookbook Name:: dnsmasq_cache
# Recipe:: default
#
# Copyright (C) 2012 HiganWorks LLC
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

package "dnsmasq" do
  action :install
end

service "dnsmasq" do
  supports [:status, :reload, :restart]
  action [:enable, :start]
end

template ::File.join([node['dnsmasq_cache']['config_dir'], "include.conf"]) do
  source "config.erb"
  variables node['dnsmasq_cache']
#   variables ({
#     :options => node['dnsmasq_cache']['config'].to_hash
#   })
  notifies :restart, "service[dnsmasq]", :immediately
end
