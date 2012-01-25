# Bundler Push Host

Override the host for Bundler rake tasks.

# To use

```ruby
require 'bundler/gem_tasks'
require 'bundler_push_host'

BundlerPushHost.set_host("http://mygemhost.com/")
```

# If you're nathan

gem install geminabox