require 'rbconfig'
kernel = (class << ::Kernel; self; end)
[kernel, ::Kernel].each do |k|
  if k.private_method_defined?(:gem_original_require)
    private_require = k.private_method_defined?(:require)
    k.send(:remove_method, :require)
    k.send(:define_method, :require, k.instance_method(:gem_original_require))
    k.send(:private, :require) if private_require
  end
end
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{RbConfig::CONFIG["ruby_version"]}/extensions/x86_64-linux/2.4.0-static/json-2.6.1")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{RbConfig::CONFIG["ruby_version"]}/gems/json-2.6.1/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{RbConfig::CONFIG["ruby_version"]}/gems/mixlib-cli-1.7.0/lib")
$:.unshift File.expand_path("#{__dir__}/../#{RUBY_ENGINE}/#{RbConfig::CONFIG["ruby_version"]}/gems/sensu-plugin-4.0.0/lib")
$:.unshift "/assets/build/include/checkout/lib"
