require 'pathname'
require 'net/http'
require 'test/unit'

include Test::Unit::Assertions

task default: %[test]

task :test do
  `ls */**/Dockerfile`.lines.each do |line|
    dirname = Pathname.new(line).dirname

    print dirname

    `docker build --quiet -t #{dirname} #{dirname}`
    pid = `docker run --rm -d -p 8080:80 #{dirname}`

    3.times do
      print "."
      sleep 0.2
    end

    uri = URI('http://localhost:8080/jordan')
    res = Net::HTTP.get_response(uri)

    assert_equal "200", res.code
    assert_equal "text/html", res.content_type
    assert_equal "Hello, jordan!", res.body

    `docker stop #{pid}`

    print "OK\n"
  end
end