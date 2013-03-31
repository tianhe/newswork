require 'rake'

task :collect_news => :environment do
  begin
    Interest.all.each { |i| NewsSourceManager.new('bitly').create_links(i) }
  end
end
