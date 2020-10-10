require 'pathname'
require 'net/http'
require 'timeout'
require 'test/unit'
require 'random-port'

include Test::Unit::Assertions

task default: %[test]

task :test do
  `ls */**/Dockerfile`.lines.each do |line|
    Timeout::timeout(30) do
      dirname = Pathname.new(line).dirname
      print dirname

      RandomPort::Pool::SINGLETON.acquire do |port|
        `docker build --quiet -t #{dirname} #{dirname}`
        pid = `docker run --rm -d -p #{port}:80 #{dirname}`

        uri = URI("http://localhost:#{port}/jordan")

        res = nil
        Net::HTTP.start(uri.host, uri.port) do |http|
          http.read_timeout = 0.25
          request = Net::HTTP::Get.new uri

          begin
            print "."
            res = http.request request
          rescue Exception => e
            sleep 0.25
            retry
          end
        end

        assert_equal "200", res.code
        assert_equal "text/html", res.content_type
        assert_equal "Hello, jordan!", res.body

        Process.fork { `docker stop #{pid}` }

        print "OK\n"
      end
    end
  end
end