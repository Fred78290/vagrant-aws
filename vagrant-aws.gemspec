$: << File.expand_path('../lib', __FILE__)

require "vagrant-aws/version"

Gem::Specification.new do |s|
  s.name          = "vagrant-aws"
  s.version       = VagrantPlugins::AWS::VERSION
  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"
  s.authors       = "Mitchell Hashimoto"
  s.email         = "mitchell@hashicorp.com"
  s.homepage      = "http://www.vagrantup.com"
  s.summary       = "Enables Vagrant to manage machines in EC2 and VPC."
  s.description   = "Enables Vagrant to manage machines in EC2 and VPC."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vagrant-aws"

  s.add_runtime_dependency 'activesupport', '5.2.1'
  s.add_runtime_dependency "fog-aws", "= 2.0.1"
  s.add_runtime_dependency "fog-core", "= 1.45.0"
  s.add_runtime_dependency "iniparse", "~> 1.4", ">= 1.4.2"

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(pkg|test|spec|features)/})
  end

  s.require_path = ['lib']
end
