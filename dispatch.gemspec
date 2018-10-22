
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dispatch/version"

Gem::Specification.new do |spec|
  spec.name          = "dispatch"
  spec.version       = Dispatch::VERSION
  spec.authors       = ["Olivier Lacan"]
  spec.email         = ["hi@olivierlacan.com"]

  spec.summary       = %q{Dispatch Rails installation metrics to the Rails core team}
  spec.description   = <<~STRING
    To help the Rails core team gather information about Rails configurations
    this gem dispatches (hah) basic anonymized data about which parts of Rails
    you use. It only sends data about whitelisted Rails frameworks, and nothing
    about your Gemfile, or any non-Rails portions of your codebase.
  STRING
  spec.homepage      = "https://github.com/olivierlacan/dispatch"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/olivierlacan/dispatch"
    spec.metadata["changelog_uri"] = "https://github.com/olivierlacan/dispatch/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "rails"
end
