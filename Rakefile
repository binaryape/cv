require 'bundler'


SOURCE="pete_birkinshaw_cv-generic.json"
CV_BASENAME="pete_birkinshaw_cv"
OUT_DIR="compiled"

task :default => :build

desc "Build all standard compiled output, including README.md"
task :build do

  sh "hackmyresume BUILD #{SOURCE} TO README.md"
  sh "hackmyresume BUILD #{SOURCE} TO #{OUT_DIR}/#{CV_BASENAME}.md"

end

task :clean do
  rm_rf Rake::FileList.new("compiled/*.*", "README.md")
end