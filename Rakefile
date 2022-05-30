require 'pathname'
require 'test/unit'

include Test::Unit::Assertions

task default: %[test]

task :test do
  quiet_flag = ''
  if ARGV.length <= 1
    files = `find -name 'Dockerfile' | cut -c3-`.lines
    dirs = files.map { |f| Pathname.new(f).dirname }
    quiet_flag = '--quiet'
  else
    dirs = ARGV.drop(1)
  end

  one_true_fizzbuzz = File.read('fizzbuzz.example')
  completed = 1
  threads = []

  dirs.each_with_index do |dir, i|
    threads << Thread.new {
      `docker build #{quiet_flag} -t #{dir} #{dir}`
      assert_equal one_true_fizzbuzz, `docker run --network none --rm #{dir}`

      puts "[#{completed}/#{dirs.count}] #{dir}...OK"
      completed += 1
    }
  end

  threads.each(&:join)
end
