require 'aruba/cucumber'
require 'methadone/cucumber'

ENV['PATH'] = "#{File.expand_path(File.dirname(__FILE__) + '/../../bin')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

PROJECT_ROOT = File.join(File.dirname(__FILE__),'..','..')
ENV['PATH'] = "#{File.join(PROJECT_ROOT,'bin')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"
ARUBA_DIR = File.join(%w(tmp aruba))
Before do
  @dirs = [ARUBA_DIR]
  @puts = true
  @aruba_timeout_seconds = 60
end
