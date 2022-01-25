# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require_relative 'lib/api-umbrella-status-checks'

Gem::Specification.new do |s|
    s.authors                = ['Sensu-Plugins and contributors']
    s.date                   = Date.today.to_s
    s.description            = 'Checks the api umbrella status'
    s.email                  = '<sensu-users@googlegroups.com>'
    s.executables            = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
    s.files                  = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
    s.homepage               = 'https://github.com/sensu-plugins/sensu-plugins-disk-checks'
    s.license                = 'MIT'
    s.metadata               = { 'maintainer' => '@mattyjones',
                                 'development_status' => 'active',
                                 'production_status' => 'unstable - testing recommended',
                                 'release_draft' => 'false',
                                 'release_prerelease' => 'false' }
    s.name                   = 'api-umbrella-status-checks'
    s.platform               = Gem::Platform::RUBY
    s.post_install_message   = 'You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu'
    s.require_paths          = ['lib']
    s.required_ruby_version  = '>= 2.3'
    # s.signing_key            = File.expand_path(pvt_key) if $PROGRAM_NAME =~ /gem\z/
    s.summary                = 'Plugin for checking api umbrella status'
    s.test_files             = s.files.grep(%r{^(test|spec|features)/})
    s.version                = ApiUmbrellaStatusChecks::Version::VER_STRING
  
    s.add_runtime_dependency 'sensu-plugin', '~> 4.0'
  
  end
