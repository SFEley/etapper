namespace :etap do
  desc "Update the eTapestry API Web site mirror in /doc/api"
  task :api do
    Dir.chdir(File.join(File.dirname(__FILE__),'..','doc','api')) do
      system "wget -mkp -nH --cut-dirs=2 http://www.etapestry.com/files/api/index.html"
    end
  end
end