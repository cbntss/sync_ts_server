require 'rubygems'
require 'rspec-puppet/rake_task'
require 'puppetlabs_spec_helper/rake_tasks'

begin
  if Gem::Specification::find_by_name('puppet-lint')
    require 'puppet-lint/tasks/puppet-lint'
    PuppetLint.configuration.ignore_paths = ["spec/**/*.pp", "vendor/**/*.pp"]
    task :default => [:rspec, :lint]
  end

rescue Gem::LoadError
  task :default => :rspec
end
