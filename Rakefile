require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "etapper"
    gem.summary = %Q{Ruby gem to connect to eTapestry's SOAP API}
    # gem.description = %Q{TODO: longer description of your gem}
    gem.email = "seley@aarweb.org"
    gem.homepage = "http://github.com/SFEley/etapper"
    gem.authors = ["Stephen Eley"]
    gem.rubyforge_project = "etapper"
    gem.add_dependency "httpclient"
    gem.add_development_dependency "rspec"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::RubyforgeTasks.new do |rubyforge|
    rubyforge.doc_task = "rdoc"
  end
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

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "etapper #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

namespace :etap do
  desc "Update the eTapestry API Web site mirror in /doc/api"
  task :api do
    Dir.chdir(File.join(File.dirname(__FILE__),'doc','api')) do
      system "wget -mkp -nH --cut-dirs=2 http://www.etapestry.com/files/api/index.html"
    end
  end
end