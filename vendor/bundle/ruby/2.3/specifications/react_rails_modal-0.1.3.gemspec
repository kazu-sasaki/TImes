# -*- encoding: utf-8 -*-
# stub: react_rails_modal 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "react_rails_modal".freeze
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["kiyodori".freeze]
  s.date = "2016-12-08"
  s.description = "React_rails_modal creates modal dialog easily on react-rails".freeze
  s.email = ["kiyodori@yahoo.co.jp".freeze]
  s.homepage = "https://github.com/kiyodori/react_rails_modal".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Accessible modal dialog component on react-rails".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.13"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.2"])
      s.add_development_dependency(%q<react-rails>.freeze, [">= 1.7.0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 1.13"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.2"])
      s.add_dependency(%q<react-rails>.freeze, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.13"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_dependency(%q<react-rails>.freeze, [">= 1.7.0"])
  end
end
