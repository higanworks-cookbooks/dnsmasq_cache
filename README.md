# dnsmasq_cache cookbook

[![Build Status](https://secure.travis-ci.org/higanworks-cookbooks/dnsmasq_cache.png?branch=master)](https://travis-ci.org/higanworks-cookbooks/dnsmasq_cache)

Install dnsmasq and use localcache.

## tested by

- foodcritic

# Requirements

# Usage


# Attributes

<pre><code>default['dnsmasq_cache']['config_dir'] = "/etc/dnsmasq.d"
default['dnsmasq_cache']['config'] = {
  "listen-address" => "127.0.0.1"
}</code></pre>

# Recipes

- defaut: install and create configfile from attributes.

# Author

Author:: HiganWorks LLC (<sawanoboriyu@higanworks.com>)
