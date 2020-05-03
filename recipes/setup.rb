package 'apache2' do
 action :install
end

package 'emacs'

package 'git' do
 action :install
end

package 'ntp' do
 action :install
end

file  '/etc/motd' do
 content 'this server is the property of techtrends'
 action :create
 owner 'root'
 group 'root'
end


