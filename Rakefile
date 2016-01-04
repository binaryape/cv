require 'bundler'


SOURCE="pete_birkinshaw_cv-generic.json"
CV_BASENAME="pete_birkinshaw_cv"
OUT_DIR="compiled"

task :default => :build

desc "Watch and rebuild whenever the source file (#{SOURCE}) changes"
task :guard do
  sh "bundle exec guard"
end

desc "Build all standard compiled output, including README.md"
task :build => :validate do

  sh "hackmyresume BUILD #{SOURCE} TO README.md"
  sh "hackmyresume BUILD #{SOURCE} TO #{OUT_DIR}/#{CV_BASENAME}.md"

end

desc "Check that source file is valid"
task :validate do
  sh "hackmyresume VALIDATE #{SOURCE}"
end

desc "Remove all generated files"
task :clean do
  rm_rf Rake::FileList.new("compiled/*.*", "README.md")
end