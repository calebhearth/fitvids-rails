require "bundler/gem_tasks"

task :update do
  require 'net/http'
  require 'json'

  tags_url = 'https://api.github.com/repos/davatron5000/FitVids.js/tags'
  tags = JSON.parse(Net::HTTP.get(URI(tags_url)))
  latest_tag = tags.first
  if latest_tag['name'][1..-1] > Fitvids::Rails::VERSION
    upstream_location = "/davatron5000/FitVids.js/#{latest_tag['commit']['sha']}/jquery.fitvids.js"
    file_location = File.join(File.dirname(File.absolute_path(__FILE__)), 'vendor', 'assets', 'javascripts', 'fitvids.js')
    puts "Downloading new version (#{latest_tag['name']}):"
    puts upstream_location
    Net::HTTP.start('rawgit.com', use_ssl: true) do |http|
      resp = http.get(upstream_location)
      File.open(file_location, 'w') { |file| file.write(resp.body) }
    end
    puts "Please bump the version.rb, commit and open a pull request with the new version. (#{latest_tag['name']})"
  else
    puts "Already up to date. (#{latest_tag['name']})"
  end
end
