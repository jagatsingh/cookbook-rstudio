
include_recipe 'R'

case node['platform']
when 'ubuntu', 'debian'
  %w| libssl0.9.8 libapparmor1 apparmor-utils |.each do |pkg|
    package pkg do
      action :install
    end
  end
end

user "rstudio" do
  comment "Application execution user"
  uid 2000
  gid "users"
  shell "/bin/false"
  home "/home/rstudio"
end

directory "/home/rstudio" do
  owner "rstudio"
  group "users"
  mode 0755
  action :create
end

rstudio_package = "#{Chef::Config[:file_cache_path]}/#{node.rstudio[:package]}"

remote_file rstudio_package do
  source node.rstudio[:download_url]
  mode 0644
  checksum node.rstudio[:checksum]
end

case node['platform']
when 'ubuntu', 'debian'
  dpkg_package 'rstudio-server' do
    source rstudio_package
    action :install
  end
when 'centos', 'redhat'
  yum_package 'rstudio-server' do
    source rstudio_package
    action :install
  end
end
