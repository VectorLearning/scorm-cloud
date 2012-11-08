# encoding: utf-8

require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "scorm_cloud"
  gem.homepage = "http://github.com/redhatcat/scorm-cloud"
  gem.license = "MIT"
  gem.summary = %Q{Rustici Scorm Cloud Web Service API Wrapper}
  gem.description = %Q{Rustici Scorm Cloud Web Service API Wrapper}
  gem.email = "support@aura-software.com"
  gem.authors = ["Aura Software", "Ken Richard"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new('spec')

require 'cucumber/rake/task'
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = "--tags ~@apibug"
end
namespace :cucumber do
	Cucumber::Rake::Task.new('apibugs') do |t|
  	t.cucumber_opts = "--tags @apibug"
	end
	Cucumber::Rake::Task.new('wip') do |t|
  	t.cucumber_opts = "--tags @wip"
	end
end
task :test do
	[:spec, :cucumber].each { |t| Rake::Task[t].execute }
end

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "blah2 #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :default => :test
