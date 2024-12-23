require 'jekyll'
require 'jekyll/commands/serve'
require 'jekyll/commands/build'
require 'jekyll/commands/clean'
require 'jekyll/commands/gh_pages'

desc "Build site and deploy to GitHub Pages"
task :deploy do
  Jekyll::Commands::Build.process({})
  Jekyll::Commands::GhPages.process({})
end
