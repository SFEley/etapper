require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "etapper"
    gem.summary = %Q{Ruby gem to connect to eTapestry's SOAP API}
    gem.description = %Q{Ruby gem to connect to eTapestry's SOAP API}
    gem.email = "seley@aarweb.org"
    gem.homepage = "http://github.com/SFEley/etapper"
    gem.authors = ["Stephen Eley"]
    gem.add_dependency "httpclient"
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_development_dependency "yard", ">= 0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end

namespace :etap do
  desc "Update the eTapestry API Web site mirror in /doc/api"
  task :api do
    Dir.chdir(File.join(File.dirname(__FILE__),'doc','api')) do
      system "wget -mkp -nH --cut-dirs=2 http://www.etapestry.com/files/api/index.html"
    end
  end
end