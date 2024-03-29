RSpec.configure do |c|
  c.mock_with :rspec
end

fixture_path = File.join(File.dirname(File.expand_path(__FILE__)), 'fixtures')

require 'puppetlabs_spec_helper/puppet_spec_helper'
require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-facts'


RSpec.configure do |c|
  c.module_path     = File.join(fixture_path, 'modules')
  c.manifest_dir    = File.join(fixture_path, 'manifests')
  c.manifest        = File.join(fixture_path, 'manifests', 'site.pp')
  c.environmentpath = File.join(Dir.pwd, 'spec')

 #Coverage generation
    c.after(:suite) do
       RSpec::Puppet::Coverage.report!
    end
end

