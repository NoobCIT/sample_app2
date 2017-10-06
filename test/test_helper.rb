ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper # I had to add this in to get chapter 8.2.5 to pass

  # Returns true if a test user is logged in.
  def is_logged_in?
    !session[:user_id].nil?
  end

end
