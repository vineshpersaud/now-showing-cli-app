require "bundler/setup"
<<<<<<< HEAD
<<<<<<< HEAD
require "now_showing"
=======
require "now/showing"
>>>>>>> bd91a844aa37a77f2397c223b5da79ebb86c0824
=======
require "now_showing"
>>>>>>> e64af03802df66cdb7402e71515225939311d8c1

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
