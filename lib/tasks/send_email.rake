require 'uri'
require 'net/http'

desc "Generate and send email"
task :send_email => :environment do
    uri = URI("http://ui-team-weekly-digest.ne4istb.com/" + ENV["DIGEST_POCKET_CONSUMER_KEY"] +"/latest")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.path)
    response = https.request(request)
    puts response
end
