#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'sparql-client'
  gem.homepage           = 'http://ruby-rdf.github.com/sparql-client/'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'SPARQL client for RDF.rb.'
  gem.description        = %(Executes SPARQL queries and updates against a remote SPARQL 1.0 or 1.1 endpoint,
                            or against a local repository. Generates SPARQL queries using a simple DSL.)
  gem.rubyforge_project  = 'sparql-client'

  gem.authors            = ['Arto Bendiken', 'Ben Lavender', 'Gregg Kellogg']
  gem.email              = 'public-rdf-ruby@w3.org'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CREDITS README UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.1'
  gem.requirements               = []
  gem.add_runtime_dependency     'rdf',       '>= 1.0'
  gem.add_runtime_dependency     'net-http-persistent', '>= 1.4'
  gem.add_runtime_dependency     'json_pure', '>= 1.4'
  gem.add_development_dependency 'sparql',    '>= 1.0' unless RUBY_VERSION < "1.9"
  gem.add_development_dependency 'rdf-spec',  '>= 1.0'
  gem.add_development_dependency 'rspec',     '>= 2.14'
  gem.add_development_dependency 'yard' ,     '>= 0.8'
  gem.post_install_message       = nil
end
