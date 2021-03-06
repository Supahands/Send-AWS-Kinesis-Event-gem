# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'send_aws_kinesis_event/version'

Gem::Specification.new do |spec|
  spec.name          = "send_aws_kinesis_event"
  spec.version       = SendAwsKinesisEvent::VERSION
  spec.authors       = ["Low Yeong Yih"]
  spec.email         = ["skye19923@hotmail.com"]

  spec.summary       = "A gem that sends data to AWS Kinesis"
  spec.description   = "testing...."
  spec.homepage      = "https://github.com/JuzLykToEat/Send-AWS-Kinesis-Event"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a singrle host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'aws-sdk-kinesis', '~> 1.1.0'
end
