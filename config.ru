#!/usr/bin/env ruby
require 'rubygems'
require 'gollum/app'

gollum_path = File.expand_path('project_repo') # CHANGE THIS TO POINT TO YOUR OWN WIKI REPO
wiki_options = {}
wiki_options[:page_file_dir] = 'tmp/docs/wiki'
wiki_options[:universal_toc] = false

use Rack::Auth::Basic, "Restricted Area" do |username, password|
     [username, password] == [ENV['GOLLUM_USERNAME'], ENV['GOLLUM_PASSWORD']]
end

Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, wiki_options)
run Precious::App
