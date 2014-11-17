# -*- encoding: utf-8 -*-
# stub: rack-jekyll 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-jekyll"
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Bryan Goines", "Ad\u{e3}o Raul"]
  s.date = "2013-05-15"
  s.description = "Transform your jekyll based app into a Rack application"
  s.email = "adao.raul@gmail.com"
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown"]
  s.homepage = "http://github.com/adaoraul/rack-jekyll"
  s.rubyforge_project = "rack-jekyll"
  s.rubygems_version = "2.2.2"
  s.summary = "rack-jekyll"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, ["< 2.0", ">= 0.12.0"])
      s.add_runtime_dependency(%q<rack>, ["~> 1.5.0"])
      s.add_development_dependency(%q<bacon>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, ["< 2.0", ">= 0.12.0"])
      s.add_dependency(%q<rack>, ["~> 1.5.0"])
      s.add_dependency(%q<bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, ["< 2.0", ">= 0.12.0"])
    s.add_dependency(%q<rack>, ["~> 1.5.0"])
    s.add_dependency(%q<bacon>, [">= 0"])
  end
end
