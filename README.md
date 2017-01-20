## Moocher - Keep Moochers Out

This is Ruby interface for Moocher api, A Reputation API and Anti-Abuse Service. Still in developmental phase.
Currently functioning features are listed below.


## Check Blacklisted IP

```ruby
require 'moocher'

ip_blacklisted? "8.8.8.8"

#=> false

# If IP is found in blacklisted database it will return true.
```
