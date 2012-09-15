maintainer       "marsam"
maintainer_email "rodasmario2@gmail.com"
license          "MIT License"
description      "Installs and configures rstudio server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "R"

supports "ubuntu"
supports "centos"

provides "rstudio"
