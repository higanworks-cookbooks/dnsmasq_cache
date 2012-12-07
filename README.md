# dnsmasq_cache cookbook

Install dnsmasq and use localcache.

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
