# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'strateg'
  spec.version       = '0.1.0'
  spec.authors       = ['Jakub Polak']
  spec.email         = ['jakub.polak.vz@gmail.com']

  spec.summary       = 'Ruby gem for STRATEG API'
  spec.description   = 'The STRATEG API allows to view and download for further processing the full range of data
  and metadata contained in the STRATEG system. The data is made available through REST API in JSON format.'
  spec.homepage      = 'https://github.com/kupolak/strateg'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kupolak/strateg'
  spec.metadata['changelog_uri'] = 'https://github.com/kupolak/strateg/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.12.0'
  spec.add_development_dependency 'rubocop', '~> 1.57'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.24.1'

  spec.add_dependency 'httparty', '>= 0.17.3', '< 0.22.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
