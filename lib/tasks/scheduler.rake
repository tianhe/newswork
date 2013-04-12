require 'rake'

task :collect_news => :environment do
  Interest.all.each { |i| NewsSourceManager.new('bitly').create_links(i) }
end
