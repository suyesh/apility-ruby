## Apility - Keep Moochers Out

This is Ruby interface for Moocher api, Currently renamed to [Apility](https://apility.io/docs/ruby-wrapper-interface/) , A Reputation API and Anti-Abuse Service. Still in developmental phase.
Currently functioning features are listed below.

###Installation

Add the following to your Gemfile and bundle install

```ruby
gem 'apility'
```
Or

```shell
gem install moocher
```
## Instantiate Moocher::Resource

```ruby
require 'apility'

moocher = Apility::Resource.new

```

## Check Blacklisted IP

```ruby

moocher.ip_blacklisted? "8.8.8.8"

#=> false

# If IP is found in blacklisted database it will return true.
```

## Check Blacklisted domains

```ruby

moocher.domain_blacklisted? "google.com"
#=> false

moocher.domain_blacklisted? "google.com", details: true #Swithing details to true will give you detailed response on domain

#=> {"response"=>{"source_ip"=>{"geo"=>{}, "score"=>0, "is_quarantined"=>false, "blacklist"=>[]}, "domain"=>{"mx"=>["aspmx.l.google.com", "alt3.aspmx.l.google.com", "alt4.aspmx.l.google.com", "alt2.aspmx.l.google.com", "alt1.aspmx.l.google.com"], "blacklist"=>[], "ns"=>["ns1.google.com.", "ns3.google.com.", "ns2.google.com.", "ns4.google.com."], "score"=>0, "blacklist_mx"=>[], "blacklist_ns"=>[]}, "score"=>0, "ip"=>{"geo"=>{"hostname"=>"", "address"=>"216.58.214.174", "longitude"=>-122.0574, "region"=>"California", "country"=>"US", "as"=>{"asn"=>"15169", "country"=>"US", "networks"=>"['8.8.4.0/24', '8.8.8.0/24', '8.34.208.0/21', '8.34.216.0/21', '8.35.192.0/21', '8.35.200.0/21', '23.236.48.0/20', '23.251.128.0/19', '35.184.0.0/13', '64.233.160.0/19', '64.233.160.0/24', '64.233.161.0/24', '64.233.162.0/24', '64.233.163.0/24', '64.233.164.0/24', '64.233.165.0/24', '64.233.166.0/24', '64.233.167.0/24', '64.233.168.0/24', '64.233.169.0/24', '64.233.171.0/24', '64.233.176.0/24', '64.233.177.0/24', '64.233.178.0/24', '64.233.179.0/24', '64.233.180.0/24', '64.233.181.0/24', '64.233.182.0/24', '64.233.183.0/24', '64.233.184.0/24', '64.233.185.0/24', '64.233.186.0/24', '64.233.187.0/24', '64.233.188.0/24', '64.233.189.0/24', '64.233.190.0/24', '64.233.191.0/24', '66.102.0.0/20', '66.102.1.0/24', '66.102.2.0/24', '66.102.3.0/24', '66.102.4.0/24', '66.102.12.0/24', '66.249.64.0/19', '70.32.128.0/19', '70.32.131.0/24', '70.32.145.0/24', '70.32.146.0/23', '70.32.151.0/24', '72.14.192.0/18', '74.114.24.0/21', '74.125.0.0/16', '74.125.0.0/18', '74.125.6.0/24', '74.125.21.0/24', '74.125.22.0/24', '74.125.23.0/24', '74.125.26.0/24', '74.125.27.0/24', '74.125.28.0/24', '74.125.29.0/24', '74.125.30.0/24', '74.125.31.0/24', '74.125.39.0/24', '74.125.68.0/24', '74.125.69.0/24', '74.125.70.0/24', '74.125.71.0/24', '74.125.126.0/24', '74.125.127.0/24', '74.125.128.0/24', '74.125.129.0/24', '74.125.130.0/24', '74.125.131.0/24', '74.125.132.0/24', '74.125.133.0/24', '74.125.134.0/24', '74.125.135.0/24', '74.125.138.0/24', '74.125.139.0/24', '74.125.140.0/24', '74.125.141.0/24', '74.125.142.0/24', '74.125.143.0/24', '74.125.192.0/24', '74.125.193.0/24', '74.125.195.0/24', '74.125.196.0/24', '74.125.198.0/24', '74.125.199.0/24', '74.125.200.0/24', '74.125.201.0/24', '74.125.202.0/24', '74.125.203.0/24', '74.125.204.0/24', '74.125.205.0/24', '74.125.206.0/24', '74.125.225.0/24', '74.125.226.0/24', '74.125.227.0/24', '74.125.228.0/24', '74.125.230.0/24', '74.125.232.0/24', '74.125.234.0/24', '74.125.235.0/24', '74.125.236.0/24', '74.125.238.0/24', '104.132.0.0/23', '104.132.5.0/24', '104.132.7.0/24', '104.132.8.0/24', '104.132.11.0/24', '104.132.34.0/24', '104.132.51.0/24', '104.132.141.0/24', '104.133.0.0/24', '104.133.2.0/23', '104.154.0.0/15', '104.196.0.0/14', '107.167.160.0/19', '107.178.192.0/18', '108.59.80.0/20', '108.170.192.0/18', '108.177.0.0/17', '108.177.8.0/24', '108.177.9.0/24', '108.177.10.0/24', '108.177.11.0/24', '108.177.12.0/24', '108.177.14.0/24', '108.177.15.0/24', '108.177.96.0/24', '108.177.97.0/24', '108.177.98.0/24', '130.211.0.0/16', '142.250.0.0/15', '146.148.0.0/17', '162.216.148.0/22', '162.222.176.0/21', '172.102.8.0/21', '172.102.8.0/24', '172.102.9.0/24', '172.102.10.0/24', '172.102.11.0/24', '172.102.12.0/23', '172.102.14.0/23', '172.110.32.0/21', '172.217.0.0/16', '172.217.0.0/24', '172.217.16.0/24', '172.217.24.0/24', '172.217.28.0/24', '172.217.30.0/24', '172.253.0.0/16', '173.194.0.0/16', '173.194.7.0/24', '173.194.32.0/24', '173.194.34.0/24', '173.194.35.0/24', '173.194.36.0/24', '173.194.37.0/24', '173.194.38.0/24', '173.194.39.0/24', '173.194.40.0/24', '173.194.41.0/24', '173.194.42.0/24', '173.194.44.0/24', '173.194.46.0/24', '173.194.53.0/24', '173.194.63.0/24', '173.194.64.0/24', '173.194.66.0/24', '173.194.67.0/24', '173.194.68.0/24', '173.194.69.0/24', '173.194.70.0/24', '173.194.73.0/24', '173.194.74.0/24', '173.194.76.0/24', '173.194.77.0/24', '173.194.78.0/24', '173.194.79.0/24', '173.194.112.0/24', '173.194.113.0/24', '173.194.117.0/24', '173.194.118.0/24', '173.194.119.0/24', '173.194.120.0/24', '173.194.121.0/24', '173.194.124.0/24', '173.194.132.0/24', '173.194.136.0/24', '173.194.140.0/24', '173.194.141.0/24', '173.194.142.0/24', '173.194.175.0/24', '173.194.192.0/24', '173.194.193.0/24', '173.194.194.0/24', '173.194.195.0/24', '173.194.196.0/24', '173.194.197.0/24', '173.194.198.0/24', '173.194.199.0/24', '173.194.200.0/24', '173.194.201.0/24', '173.194.202.0/24', '173.194.203.0/24', '173.194.204.0/24', '173.194.205.0/24', '173.194.206.0/24', '173.194.207.0/24', '173.194.208.0/24', '173.194.209.0/24', '173.194.210.0/24', '173.194.211.0/24', '173.194.212.0/24', '173.194.213.0/24', '173.194.214.0/24', '173.194.215.0/24', '173.194.216.0/24', '173.194.217.0/24', '173.194.218.0/24', '173.194.219.0/24', '173.194.220.0/24', '173.194.221.0/24', '173.194.222.0/24', '173.194.223.0/24', '173.255.112.0/20', '185.25.28.0/23', '185.150.148.0/22', '192.104.160.0/23', '192.158.28.0/22', '192.178.0.0/15', '199.192.112.0/22', '199.223.232.0/21', '207.223.160.0/20', '208.68.108.0/22', '208.81.188.0/22', '209.85.128.0/17', '209.85.144.0/24', '209.85.145.0/24', '209.85.147.0/24', '209.85.200.0/24', '209.85.201.0/24', '209.85.202.0/24', '209.85.203.0/24', '209.85.232.0/24', '209.85.233.0/24', '209.85.234.0/24', '209.85.235.0/24', '209.107.176.0/20', '209.107.176.0/23', '209.107.182.0/23', '216.58.192.0/19', '216.58.200.0/24', '216.58.208.0/24', '216.58.209.0/24', '216.58.210.0/24', '216.58.211.0/24', '216.58.212.0/24', '216.58.213.0/24', '216.58.214.0/24', '216.58.215.0/24', '216.58.216.0/24', '216.58.217.0/24', '216.58.218.0/24', '216.58.219.0/24', '216.58.220.0/24', '216.58.221.0/24', '216.58.222.0/24', '216.58.223.0/24', '216.73.80.0/20', '216.239.32.0/19', '216.239.32.0/24', '216.239.33.0/24', '216.239.34.0/24', '216.239.35.0/24', '216.239.36.0/24', '216.239.38.0/24', '216.239.39.0/24', '216.252.220.0/22', '216.252.220.0/24', '216.252.221.0/24', '216.252.222.0/24']", "name"=>"GOOGLE - Google Inc."}, "city"=>"Mountain View", "continent"=>"NA", "postal"=>"94043", "latitude"=>37.419200000000004}, "score"=>0, "is_quarantined"=>false, "blacklist"=>[]}}, "type"=>"baddomain"}

#This payload is an enriched version of the domain reputation results. The extra information provided can help #to determine if the email is valid: The SMTP server is available or not The email account exists in the server #The server has a catch-all directive enabled or not The email has been created in a disposable email service #The email has been created in a free email service The email has been used for spam or abuse activities and it #is blacklisted.
#The service returns a global score and several specific scores. The global score is the sum of the specific #scores. The more negative the score, the riskier the email. A positive score normally its a good Reputation #email, and a zero score means neutral. For example, free email services normally return zero score.
```

## Check Blacklisted Emails

```ruby

moocher.email_blacklisted? "goodemail@gmail.com"
#=> false

moocher.email_blacklisted? "goodemail@gmail.com", details: true

#=> {"response"=>{"address"=>{"score"=>0, "is_well_formed"=>true, "is_role"=>false}, "domain"=>{"mx"=>["alt1.gmail-smtp-in.l.google.com", "alt3.gmail-smtp-in.l.google.com", "alt4.gmail-smtp-in.l.google.com", "alt2.gmail-smtp-in.l.google.com", "gmail-smtp-in.l.google.com"], "blacklist"=>["FREEMAIL"], "ns"=>["ns2.google.com.", "ns3.google.com.", "ns1.google.com.", "ns4.google.com."], "score"=>-1, "blacklist_mx"=>[], "blacklist_ns"=>[]}, "email"=>{"score"=>0, "blacklist"=>[]}, "ip"=>{"geo"=>{"hostname"=>"", "address"=>"216.58.214.165", "longitude"=>-122.0574, "region"=>"California", "country"=>"US", "as"=>{"asn"=>"15169", "country"=>"US", "networks"=>"['8.8.4.0/24', '8.8.8.0/24', '8.34.208.0/21', '8.34.216.0/21', '8.35.192.0/21', '8.35.200.0/21', '23.236.48.0/20', '23.251.128.0/19', '35.184.0.0/13', '64.233.160.0/19', '64.233.160.0/24', '64.233.161.0/24', '64.233.162.0/24', '64.233.163.0/24', '64.233.164.0/24', '64.233.165.0/24', '64.233.166.0/24', '64.233.167.0/24', '64.233.168.0/24', '64.233.169.0/24', '64.233.171.0/24', '64.233.176.0/24', '64.233.177.0/24', '64.233.178.0/24', '64.233.179.0/24', '64.233.180.0/24', '64.233.181.0/24', '64.233.182.0/24', '64.233.183.0/24', '64.233.184.0/24', '64.233.185.0/24', '64.233.186.0/24', '64.233.187.0/24', '64.233.188.0/24', '64.233.189.0/24', '64.233.190.0/24', '64.233.191.0/24', '66.102.0.0/20', '66.102.1.0/24', '66.102.2.0/24', '66.102.3.0/24', '66.102.4.0/24', '66.102.12.0/24', '66.249.64.0/19', '70.32.128.0/19', '70.32.131.0/24', '70.32.145.0/24', '70.32.146.0/23', '70.32.151.0/24', '72.14.192.0/18', '74.114.24.0/21', '74.125.0.0/16', '74.125.0.0/18', '74.125.6.0/24', '74.125.21.0/24', '74.125.22.0/24', '74.125.23.0/24', '74.125.26.0/24', '74.125.27.0/24', '74.125.28.0/24', '74.125.29.0/24', '74.125.30.0/24', '74.125.31.0/24', '74.125.39.0/24', '74.125.68.0/24', '74.125.69.0/24', '74.125.70.0/24', '74.125.71.0/24', '74.125.126.0/24', '74.125.127.0/24', '74.125.128.0/24', '74.125.129.0/24', '74.125.130.0/24', '74.125.131.0/24', '74.125.132.0/24', '74.125.133.0/24', '74.125.134.0/24', '74.125.135.0/24', '74.125.138.0/24', '74.125.139.0/24', '74.125.140.0/24', '74.125.141.0/24', '74.125.142.0/24', '74.125.143.0/24', '74.125.192.0/24', '74.125.193.0/24', '74.125.195.0/24', '74.125.196.0/24', '74.125.198.0/24', '74.125.199.0/24', '74.125.200.0/24', '74.125.201.0/24', '74.125.202.0/24', '74.125.203.0/24', '74.125.204.0/24', '74.125.205.0/24', '74.125.206.0/24', '74.125.225.0/24', '74.125.226.0/24', '74.125.227.0/24', '74.125.228.0/24', '74.125.230.0/24', '74.125.232.0/24', '74.125.234.0/24', '74.125.235.0/24', '74.125.236.0/24', '74.125.238.0/24', '104.132.0.0/23', '104.132.5.0/24', '104.132.7.0/24', '104.132.8.0/24', '104.132.11.0/24', '104.132.34.0/24', '104.132.51.0/24', '104.132.141.0/24', '104.133.0.0/24', '104.133.2.0/23', '104.154.0.0/15', '104.196.0.0/14', '107.167.160.0/19', '107.178.192.0/18', '108.59.80.0/20', '108.170.192.0/18', '108.177.0.0/17', '108.177.8.0/24', '108.177.9.0/24', '108.177.10.0/24', '108.177.11.0/24', '108.177.12.0/24', '108.177.14.0/24', '108.177.15.0/24', '108.177.96.0/24', '108.177.97.0/24', '108.177.98.0/24', '130.211.0.0/16', '142.250.0.0/15', '146.148.0.0/17', '162.216.148.0/22', '162.222.176.0/21', '172.102.8.0/21', '172.102.8.0/24', '172.102.9.0/24', '172.102.10.0/24', '172.102.11.0/24', '172.102.12.0/23', '172.102.14.0/23', '172.110.32.0/21', '172.217.0.0/16', '172.217.0.0/24', '172.217.16.0/24', '172.217.24.0/24', '172.217.28.0/24', '172.217.30.0/24', '172.253.0.0/16', '173.194.0.0/16', '173.194.7.0/24', '173.194.32.0/24', '173.194.34.0/24', '173.194.35.0/24', '173.194.36.0/24', '173.194.37.0/24', '173.194.38.0/24', '173.194.39.0/24', '173.194.40.0/24', '173.194.41.0/24', '173.194.42.0/24', '173.194.44.0/24', '173.194.46.0/24', '173.194.53.0/24', '173.194.63.0/24', '173.194.64.0/24', '173.194.66.0/24', '173.194.67.0/24', '173.194.68.0/24', '173.194.69.0/24', '173.194.70.0/24', '173.194.73.0/24', '173.194.74.0/24', '173.194.76.0/24', '173.194.77.0/24', '173.194.78.0/24', '173.194.79.0/24', '173.194.112.0/24', '173.194.113.0/24', '173.194.117.0/24', '173.194.118.0/24', '173.194.119.0/24', '173.194.120.0/24', '173.194.121.0/24', '173.194.124.0/24', '173.194.132.0/24', '173.194.136.0/24', '173.194.140.0/24', '173.194.141.0/24', '173.194.142.0/24', '173.194.175.0/24', '173.194.192.0/24', '173.194.193.0/24', '173.194.194.0/24', '173.194.195.0/24', '173.194.196.0/24', '173.194.197.0/24', '173.194.198.0/24', '173.194.199.0/24', '173.194.200.0/24', '173.194.201.0/24', '173.194.202.0/24', '173.194.203.0/24', '173.194.204.0/24', '173.194.205.0/24', '173.194.206.0/24', '173.194.207.0/24', '173.194.208.0/24', '173.194.209.0/24', '173.194.210.0/24', '173.194.211.0/24', '173.194.212.0/24', '173.194.213.0/24', '173.194.214.0/24', '173.194.215.0/24', '173.194.216.0/24', '173.194.217.0/24', '173.194.218.0/24', '173.194.219.0/24', '173.194.220.0/24', '173.194.221.0/24', '173.194.222.0/24', '173.194.223.0/24', '173.255.112.0/20', '185.25.28.0/23', '185.150.148.0/22', '192.104.160.0/23', '192.158.28.0/22', '192.178.0.0/15', '199.192.112.0/22', '199.223.232.0/21', '207.223.160.0/20', '208.68.108.0/22', '208.81.188.0/22', '209.85.128.0/17', '209.85.144.0/24', '209.85.145.0/24', '209.85.147.0/24', '209.85.200.0/24', '209.85.201.0/24', '209.85.202.0/24', '209.85.203.0/24', '209.85.232.0/24', '209.85.233.0/24', '209.85.234.0/24', '209.85.235.0/24', '209.107.176.0/20', '209.107.176.0/23', '209.107.182.0/23', '216.58.192.0/19', '216.58.200.0/24', '216.58.208.0/24', '216.58.209.0/24', '216.58.210.0/24', '216.58.211.0/24', '216.58.212.0/24', '216.58.213.0/24', '216.58.214.0/24', '216.58.215.0/24', '216.58.216.0/24', '216.58.217.0/24', '216.58.218.0/24', '216.58.219.0/24', '216.58.220.0/24', '216.58.221.0/24', '216.58.222.0/24', '216.58.223.0/24', '216.73.80.0/20', '216.239.32.0/19', '216.239.32.0/24', '216.239.33.0/24', '216.239.34.0/24', '216.239.35.0/24', '216.239.36.0/24', '216.239.38.0/24', '216.239.39.0/24', '216.252.220.0/22', '216.252.220.0/24', '216.252.221.0/24', '216.252.222.0/24']", "name"=>"GOOGLE - Google Inc."}, "city"=>"Mountain View", "continent"=>"NA", "postal"=>"94043", "latitude"=>37.419200000000004}, "score"=>0, "is_quarantined"=>false, "blacklist"=>[]}, "score"=>0, "disposable"=>{"is_disposable"=>false, "score"=>0}, "source_ip"=>{"geo"=>{}, "score"=>0, "is_quarantined"=>false, "blacklist"=>[]}, "smtp"=>{"exist_catchall"=>false, "score"=>1, "exist_address"=>true, "exist_mx"=>true}, "freemail"=>{"score"=>0, "is_freemail"=>true}}, "type"=>"bademail"}


#This payload is an enriched version of the domain reputation results. The extra information provided can help #to determine if the email is valid: The SMTP server is available or not The email account exists in the server #The server has a catch-all directive enabled or not The email has been created in a disposable email service #The email has been created in a free email service The email has been used for spam or abuse activities and it #is blacklisted.
#The service returns a global score and several specific scores. The global score is the sum of the specific #scores. The more negative the score, the riskier the email. A positive score normally its a good Reputation #email, and a zero score means neutral. For example, free email services normally return zero score.

```

## Geolocate IP

```ruby

moocher.geolocate_ip "8.8.8.8" #Will return geolocation of IP using Maxmind GeoIP database

#=> {"ip"=>{"hostname"=>"google-public-dns-a.google.com", "address"=>"8.8.8.8", "longitude"=>-122.0838, "region"=>"California", "country"=>"US", "as"=>{"asn"=>"15169", "country"=>"US", "networks"=>"['8.8.4.0/24', '8.8.8.0/24', '8.34.208.0/21', '8.34.216.0/21', '8.35.192.0/21', '8.35.200.0/21', '23.236.48.0/20', '23.251.128.0/19', '35.184.0.0/13', '64.233.160.0/19', '64.233.160.0/24', '64.233.161.0/24', '64.233.162.0/24', '64.233.163.0/24', '64.233.164.0/24', '64.233.165.0/24', '64.233.166.0/24', '64.233.167.0/24', '64.233.168.0/24', '64.233.169.0/24', '64.233.171.0/24', '64.233.176.0/24', '64.233.177.0/24', '64.233.178.0/24', '64.233.179.0/24', '64.233.180.0/24', '64.233.181.0/24', '64.233.182.0/24', '64.233.183.0/24', '64.233.184.0/24', '64.233.185.0/24', '64.233.186.0/24', '64.233.187.0/24', '64.233.188.0/24', '64.233.189.0/24', '64.233.190.0/24', '64.233.191.0/24', '66.102.0.0/20', '66.102.1.0/24', '66.102.2.0/24', '66.102.3.0/24', '66.102.4.0/24', '66.102.12.0/24', '66.249.64.0/19', '70.32.128.0/19', '70.32.131.0/24', '70.32.145.0/24', '70.32.146.0/23', '70.32.151.0/24', '72.14.192.0/18', '74.114.24.0/21', '74.125.0.0/16', '74.125.0.0/18', '74.125.6.0/24', '74.125.21.0/24', '74.125.22.0/24', '74.125.23.0/24', '74.125.26.0/24', '74.125.27.0/24', '74.125.28.0/24', '74.125.29.0/24', '74.125.30.0/24', '74.125.31.0/24', '74.125.39.0/24', '74.125.68.0/24', '74.125.69.0/24', '74.125.70.0/24', '74.125.71.0/24', '74.125.126.0/24', '74.125.127.0/24', '74.125.128.0/24', '74.125.129.0/24', '74.125.130.0/24', '74.125.131.0/24', '74.125.132.0/24', '74.125.133.0/24', '74.125.134.0/24', '74.125.135.0/24', '74.125.138.0/24', '74.125.139.0/24', '74.125.140.0/24', '74.125.141.0/24', '74.125.142.0/24', '74.125.143.0/24', '74.125.192.0/24', '74.125.193.0/24', '74.125.195.0/24', '74.125.196.0/24', '74.125.198.0/24', '74.125.199.0/24', '74.125.200.0/24', '74.125.201.0/24', '74.125.202.0/24', '74.125.203.0/24', '74.125.204.0/24', '74.125.205.0/24', '74.125.206.0/24', '74.125.225.0/24', '74.125.226.0/24', '74.125.227.0/24', '74.125.228.0/24', '74.125.230.0/24', '74.125.232.0/24', '74.125.234.0/24', '74.125.235.0/24', '74.125.236.0/24', '74.125.238.0/24', '104.132.0.0/23', '104.132.5.0/24', '104.132.7.0/24', '104.132.8.0/24', '104.132.11.0/24', '104.132.34.0/24', '104.132.51.0/24', '104.132.141.0/24', '104.133.0.0/24', '104.133.2.0/23', '104.154.0.0/15', '104.196.0.0/14', '107.167.160.0/19', '107.178.192.0/18', '108.59.80.0/20', '108.170.192.0/18', '108.177.0.0/17', '108.177.8.0/24', '108.177.9.0/24', '108.177.10.0/24', '108.177.11.0/24', '108.177.12.0/24', '108.177.14.0/24', '108.177.15.0/24', '108.177.96.0/24', '108.177.97.0/24', '108.177.98.0/24', '130.211.0.0/16', '142.250.0.0/15', '146.148.0.0/17', '162.216.148.0/22', '162.222.176.0/21', '172.102.8.0/21', '172.102.8.0/24', '172.102.9.0/24', '172.102.10.0/24', '172.102.11.0/24', '172.102.12.0/23', '172.102.14.0/23', '172.110.32.0/21', '172.217.0.0/16', '172.217.0.0/24', '172.217.16.0/24', '172.217.24.0/24', '172.217.28.0/24', '172.217.30.0/24', '172.253.0.0/16', '173.194.0.0/16', '173.194.7.0/24', '173.194.32.0/24', '173.194.34.0/24', '173.194.35.0/24', '173.194.36.0/24', '173.194.37.0/24', '173.194.38.0/24', '173.194.39.0/24', '173.194.40.0/24', '173.194.41.0/24', '173.194.42.0/24', '173.194.44.0/24', '173.194.46.0/24', '173.194.53.0/24', '173.194.63.0/24', '173.194.64.0/24', '173.194.66.0/24', '173.194.67.0/24', '173.194.68.0/24', '173.194.69.0/24', '173.194.70.0/24', '173.194.73.0/24', '173.194.74.0/24', '173.194.76.0/24', '173.194.77.0/24', '173.194.78.0/24', '173.194.79.0/24', '173.194.112.0/24', '173.194.113.0/24', '173.194.117.0/24', '173.194.118.0/24', '173.194.119.0/24', '173.194.120.0/24', '173.194.121.0/24', '173.194.124.0/24', '173.194.132.0/24', '173.194.136.0/24', '173.194.140.0/24', '173.194.141.0/24', '173.194.142.0/24', '173.194.175.0/24', '173.194.192.0/24', '173.194.193.0/24', '173.194.194.0/24', '173.194.195.0/24', '173.194.196.0/24', '173.194.197.0/24', '173.194.198.0/24', '173.194.199.0/24', '173.194.200.0/24', '173.194.201.0/24', '173.194.202.0/24', '173.194.203.0/24', '173.194.204.0/24', '173.194.205.0/24', '173.194.206.0/24', '173.194.207.0/24', '173.194.208.0/24', '173.194.209.0/24', '173.194.210.0/24', '173.194.211.0/24', '173.194.212.0/24', '173.194.213.0/24', '173.194.214.0/24', '173.194.215.0/24', '173.194.216.0/24', '173.194.217.0/24', '173.194.218.0/24', '173.194.219.0/24', '173.194.220.0/24', '173.194.221.0/24', '173.194.222.0/24', '173.194.223.0/24', '173.255.112.0/20', '185.25.28.0/23', '185.150.148.0/22', '192.104.160.0/23', '192.158.28.0/22', '192.178.0.0/15', '199.192.112.0/22', '199.223.232.0/21', '207.223.160.0/20', '208.68.108.0/22', '208.81.188.0/22', '209.85.128.0/17', '209.85.144.0/24', '209.85.145.0/24', '209.85.147.0/24', '209.85.200.0/24', '209.85.201.0/24', '209.85.202.0/24', '209.85.203.0/24', '209.85.232.0/24', '209.85.233.0/24', '209.85.234.0/24', '209.85.235.0/24', '209.107.176.0/20', '209.107.176.0/23', '209.107.182.0/23', '216.58.192.0/19', '216.58.200.0/24', '216.58.208.0/24', '216.58.209.0/24', '216.58.210.0/24', '216.58.211.0/24', '216.58.212.0/24', '216.58.213.0/24', '216.58.214.0/24', '216.58.215.0/24', '216.58.216.0/24', '216.58.217.0/24', '216.58.218.0/24', '216.58.219.0/24', '216.58.220.0/24', '216.58.221.0/24', '216.58.222.0/24', '216.58.223.0/24', '216.73.80.0/20', '216.239.32.0/19', '216.239.32.0/24', '216.239.33.0/24', '216.239.34.0/24', '216.239.35.0/24', '216.239.36.0/24', '216.239.38.0/24', '216.239.39.0/24', '216.252.220.0/22', '216.252.220.0/24', '216.252.221.0/24', '216.252.222.0/24']", "name"=>"GOOGLE - Google Inc."}, "city"=>"Mountain View", "continent"=>"NA", "postal"=>"94035", "latitude"=>37.386}}

moocher.geolocate_ip #With no IP passed, Will return Geolocation of Client's ip from Maxmind GeoIP database

#=> {"ip"=>{"hostname"=>"cpe-74-73-145-6.nyc.res.rr.com", "address"=>"74.73.145.6", "longitude"=>-74.0052, "region"=>"New York", "country"=>"US", "as"=>{"asn"=>"12271", "country"=>"US", "networks"=>"['23.246.64.0/19', '23.246.96.0/19', '24.29.96.0/19', '24.29.128.0/19', '24.30.224.0/20', '24.39.104.0/21', '24.39.112.0/20', '24.39.128.0/19', '24.42.64.0/18', '24.90.0.0/19', '24.90.32.0/19', '24.90.64.0/18', '24.90.128.0/19', '24.90.160.0/20', '24.90.176.0/20', '24.90.192.0/18', '24.97.123.0/24', '24.97.124.0/22', '24.97.184.0/23', '24.97.200.0/21', '24.102.64.0/18', '24.103.0.0/18', '24.103.64.0/18', '24.103.224.0/20', '24.103.240.0/20', '24.104.192.0/18', '24.105.128.0/20', '24.105.143.0/24', '24.105.144.0/20', '24.136.96.0/20', '24.136.112.0/20', '24.136.126.0/24', '24.136.127.0/24', '24.161.0.0/17', '24.164.128.0/19', '24.164.160.0/19', '24.168.0.0/18', '24.168.64.0/19', '24.168.96.0/19', '24.168.128.0/19', '24.193.0.0/18', '24.193.64.0/19', '24.193.96.0/20', '24.193.112.0/20', '24.193.128.0/17', '24.199.64.0/19', '24.199.96.0/20', '24.199.112.0/20', '24.213.160.0/19', '24.213.180.0/22', '24.215.128.0/17', '24.215.128.0/18', '24.215.192.0/18', '24.239.128.0/18', '24.239.160.0/19', '50.74.0.0/16', '50.74.0.0/18', '50.75.192.0/18', '64.131.128.0/18', '64.131.192.0/18', '66.65.0.0/17', '66.65.128.0/18', '66.108.0.0/17', '66.108.128.0/17', '66.110.97.0/24', '66.212.81.0/24', '66.234.32.0/19', '67.243.0.0/16', '67.244.0.0/19', '67.244.64.0/18', '67.245.0.0/16', '67.247.0.0/18', '67.247.96.0/19', '67.250.0.0/16', '67.251.128.0/19', '67.251.192.0/18', '67.251.192.0/19', '67.254.0.0/16', '68.172.208.0/20', '68.172.224.0/19', '68.173.0.0/16', '68.174.0.0/18', '68.174.44.0/22', '68.174.48.0/20', '68.174.64.0/18', '68.174.128.0/18', '68.174.192.0/18', '68.175.0.0/17', '69.22.192.0/19', '69.22.224.0/19', '69.86.0.0/19', '69.86.32.0/19', '69.86.64.0/19', '69.86.96.0/20', '69.86.112.0/20', '69.86.128.0/19', '69.86.160.0/20', '69.86.176.0/20', '69.86.192.0/19', '69.86.224.0/20', '69.86.240.0/20', '69.193.128.0/18', '69.193.192.0/19', '69.193.224.0/19', '69.193.230.0/24', '69.193.231.0/24', '69.193.232.0/21', '69.193.241.0/24', '69.193.250.0/23', '69.193.252.0/22', '69.200.64.0/19', '69.200.224.0/19', '69.200.240.0/21', '69.201.128.0/18', '69.201.192.0/18', '69.202.128.0/17', '69.203.0.0/17', '69.203.128.0/19', '69.203.192.0/18', '69.204.224.0/19', '69.206.0.0/17', '69.206.128.0/17', '72.43.96.0/19', '72.43.128.0/18', '72.225.64.0/18', '72.225.128.0/17', '72.226.0.0/17', '72.227.128.0/17', '72.229.0.0/17', '72.229.128.0/17', '72.231.0.0/17', '74.64.0.0/16', '74.65.192.0/18', '74.66.0.0/16', '74.68.0.0/18', '74.68.64.0/18', '74.68.128.0/17', '74.71.0.0/16', '74.72.0.0/15', '74.74.0.0/18', '76.15.0.0/18', '76.15.64.0/19', '76.15.96.0/19', '76.15.128.0/18', '76.15.192.0/18', '98.0.128.0/17', '98.7.0.0/17', '98.7.192.0/18', '98.12.0.0/16', '98.13.128.0/18', '98.13.192.0/18', '98.14.0.0/16', '98.15.0.0/17', '98.15.128.0/17', '104.162.0.0/16', '108.176.0.0/18', '108.176.128.0/18', '108.182.0.0/16', '142.105.0.0/17', '142.254.160.0/20', '142.255.0.0/17', '158.222.128.0/17', '172.254.0.0/16', '184.74.128.0/19', '184.74.160.0/19', '184.74.192.0/19', '184.74.208.0/20', '184.74.224.0/19', '184.75.0.0/17', '184.75.0.0/18', '184.75.64.0/19', '184.75.64.0/24', '184.75.120.0/22', '184.152.0.0/16', '184.153.0.0/17', '198.179.64.0/19', '204.210.128.0/19', '207.251.238.0/23', '208.105.0.0/18', '208.105.0.0/22', '208.105.64.0/19', '208.120.0.0/18', '208.120.64.0/18', '208.120.128.0/17', '208.125.0.0/19']", "name"=>"SCRR-12271 - Time Warner Cable Internet LLC"}, "city"=>"New York", "continent"=>"NA", "postal"=>"10013", "latitude"=>40.7214}}

```

## Trace Credit Cards

```ruby
moocher.creditcard "67068224343254254"

#=>"{\"scheme\": \"MASTERCARD\", \"bank_logo\": \"\", \"number_length\": \"\", \"bank_phone\": \"+49116116\", \"iin\": 670686, \"brand\": \"Maestro\", \"bank_url\": \"www.fidor.de\", \"country\": \"DE\", \"bank_name\": \"Fidor Bank AG\", \"prepaid\": \"\", \"bank_city\": \"M\\u00fcnchen\", \"type\": \"DEBIT\"}"
```

The above 'creditcard' function extracts BIN from Creditcard and return its information. BIN typically show the type of card like Debit or Credit, brand of card (e.g. Visa, MasterCard, Discover, American Express, etc.), and level of card such as Classic, Standard, Gold, Platinum, and World Signia. All these information combined with geolocation of the user, card and IP can help to reduce fraud. The service returns the following information:
1. Issuer Identification Number (IIN)
2. Card Brand
3. Card Type
4. Country
5. Card Scheme
6. Bank Logo
7. Bank Phone
8. Bank Name
9. Bank URL
10. Bank City
11. Prepaid
12. Number Length
