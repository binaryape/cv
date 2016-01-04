require 'bundler'
require 'yaml'
require 'erubis'
require 'facets/hash'

desc "Build core Markdown file"
task :markdown do 
  
  cv = YAML.load_file('./cv.yaml')
  
  template = File.read("./templates/root.md.erb")
  template = Erubis::Eruby.new(template)
  source = template.result(:cv => cv)
  
  File.write("./documents/source.md", source)

end
