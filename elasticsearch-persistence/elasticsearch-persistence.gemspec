# Licensed to Elasticsearch B.V. under one or more contributor
# license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright
# ownership. Elasticsearch B.V. licenses this file to you under
# the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# coding: utf-8

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elasticsearch/persistence/version'

Gem::Specification.new do |s|
  s.name          = 'elasticsearch-persistence'
  s.version       = Elasticsearch::Persistence::VERSION
  s.authors       = ['Karel Minarik']
  s.email         = ['support@elastic.co']
  s.description   = 'Persistence layer for Ruby models and Elasticsearch.'
  s.summary       = 'Persistence layer for Ruby models and Elasticsearch.'
  s.homepage      = 'https://github.com/elasticsearch/elasticsearch-rails/'
  s.license       = 'Apache 2'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.extra_rdoc_files  = ['README.md', 'LICENSE.txt']
  s.rdoc_options      = ['--charset=UTF-8']

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'activemodel',         '> 4'
  s.add_dependency 'activesupport',       '> 4'
  s.add_dependency 'elasticsearch',       '~> 8'
  s.add_dependency 'elasticsearch-model', '7.2.1'
  s.add_dependency 'hashie'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'cane'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'oj' unless defined?(JRUBY_VERSION)
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rails', '> 4'
  s.add_development_dependency 'rake', '~> 12'
  s.add_development_dependency 'ruby-prof' unless defined?(JRUBY_VERSION)
  s.add_development_dependency 'shoulda-context'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'turn'
  s.add_development_dependency 'yard'
end
