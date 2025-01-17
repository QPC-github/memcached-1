# frozen_string_literal: true

require_relative "lib/memcached/version.rb"

Gem::Specification.new do |s|
  s.name = "memcached"
  s.version = Memcached::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "ext"]
  s.authors = ["Evan Weaver"]
  s.date = "2019-02-21"
  s.description = "An interface to the libmemcached C client."
  s.email = ""
  s.extensions = ["ext/memcached/extconf.rb"]

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    Dir['{lib,ext}/**/*'].reject { |f| f =~ /\.(bundle|so|dll)/} +
      %w(LICENSE README.rdoc)
  end

  s.homepage = "https://github.com/Shopify/memcached"
  s.licenses = ["Academic Free License 3.0 (AFL-3.0)"]
  s.rubygems_version = "3.0.2"
  s.summary = "An interface to the libmemcached C client."
  s.test_files = ["test/unit/binding_test.rb", "test/unit/memcached_test.rb", "test/unit/memcached_experimental_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end
