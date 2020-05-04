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



template  '/etc/motd' do
 source 'motd.erb'
action :create
 
end


file '/var/www/html/index.html' do
 content "<h2>hello there</h2>
ipaddress: #{node['ipaddress']} "
end
