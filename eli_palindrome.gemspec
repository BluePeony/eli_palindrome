lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eli_palindrome/version"

Gem::Specification.new do |spec|
  spec.name          = "eli_palindrome"
  spec.version       = EliPalindrome::VERSION
  spec.authors       = ["Anna Förster"]
  spec.email         = ["anna.foerster1@gmx.net"]

  spec.summary       = %q{Recap how to create a gem}
  spec.description   = %q{Recap how to create a gem}
  spec.homepage      = "https://github.com/BluePeony/eli_palindrome"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/BluePeony/eli_palindrome"
  spec.metadata["changelog_uri"] = "https://github.com/BluePeony/eli_palindrome"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
