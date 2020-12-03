require_relative 'lib/cocktail_list/version'

Gem::Specification.new do |spec|
  spec.name          = "cocktail_list"
  spec.version       = CocktailList::VERSION
  spec.authors       = ["<github username>"]
  spec.email         = ["<github email address>"]

  spec.summary       = %q{Cocktail_list}
  spec.description   = %q{list of cocktails by name}
  spec.homepage      = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"
  spec.metadata["changelog_uri"] = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
