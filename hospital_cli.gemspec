require_relative 'lib/hospital_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "hospital_cli"
  spec.version       = HospitalCli::VERSION
  spec.authors       = ["ashg858"]
  spec.email         = ["aguidry27598@gmail.com"]

  spec.summary       = "hospital GEM"
  spec.description   = "hospital GEM"
  spec.homepage      = "https://github.com/ashg858/hospital_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/ashg858/hospital_cli"

  spec.metadata["homepage_uri"] = "https://github.com/ashg858/hospital_cli"
  spec.metadata["source_code_uri"] = "https://github.com/ashg858/hospital_cli"
  spec.metadata["changelog_uri"] = "https://github.com/ashg858/hospital_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "httparty"
end
