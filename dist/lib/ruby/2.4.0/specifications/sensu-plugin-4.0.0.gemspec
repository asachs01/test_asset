# -*- encoding: utf-8 -*-
# stub: sensu-plugin 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sensu-plugin".freeze
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Decklin Foster".freeze, "Sean Porter".freeze]
  s.date = "2019-02-17"
  s.description = "Plugins and helper libraries for Sensu, a monitoring framework".freeze
  s.email = ["decklin@red-bean.com".freeze, "portertech@gmail.com".freeze]
  s.executables = ["mutator-sensu-go-into-ruby.rb".freeze]
  s.files = ["bin/mutator-sensu-go-into-ruby.rb".freeze]
  s.homepage = "https://github.com/sensu-plugins/sensu-plugin".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Sensu Plugins".freeze

  s.installed_by_version = "2.6.14.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>.freeze, ["< 3.0.0"])
      s.add_runtime_dependency(%q<mixlib-cli>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.49.0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
    else
      s.add_dependency(%q<json>.freeze, ["< 3.0.0"])
      s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.49.0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<json>.freeze, ["< 3.0.0"])
    s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.49.0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
