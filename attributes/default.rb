
default.rstudio[:version] = "0.96.331"

if kernel['machine'] =~ /x86_64/
  case platform
  when "redhat", "centos", "fedora"
    default.rstudio[:download_url]  = "http://download2.rstudio.org/rstudio-server-#{default.rstudio[:version]}-x86_64.rpm"
    default.rstudio[:checksum]      = "7bf8888068c84867fc45c0ee79c44e01"

  when "ubuntu", "debian"
    default.rstudio[:download_url]  = "http://download2.rstudio.org/rstudio-server-#{default.rstudio[:version]}-amd64.deb"
    default.rstudio[:checksum]      = "f40cf743d3d0b8c2b8c27a232f1cf5de"
  end
else
  case platform
  when "redhat", "centos", "fedora"
    default.rstudio[:download_url]  = "http://download2.rstudio.org/rstudio-server-#{default.rstudio[:version]}-i686.rpm"
    default.rstudio[:checksum]      = "6dec9101ec5a08e525bfc48349f6c9f6 "
  when "ubuntu", "debian"
    default.rstudio[:download_url]  = "http://download2.rstudio.org/rstudio-server-#{default.rstudio[:version]}-i386.deb"
    default.rstudio[:checksum]      = "f614dd0d2fe01279b5fed5a3122c8f83"
  end
end

default.rstudio[:package] = default.rstudio[:download_url].split('/').last
