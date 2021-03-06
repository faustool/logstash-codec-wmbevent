Gem::Specification.new do |s|

  s.name            = 'logstash-codec-wmbevent'
  s.version         = '1.0.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = 'The WMBEvent codec is to process WMBEvent.xsd XML messages into a lean Json structure'
  s.description     = 'This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program'
  s.authors         = ['Fausto']
  s.email           = 'faustool.me@gmail.com'
  s.homepage        = 'https://github.com/faustool/logstash-codec-wmbevent'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'codec' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '>= 1.60', '<= 2.99'
  s.add_dependency 'ox', '>= 2.4.5', '<= 2.4.5'

  s.add_development_dependency 'logstash-devutils'
end

