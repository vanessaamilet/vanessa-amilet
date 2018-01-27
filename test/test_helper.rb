ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
=begin  require 'test_helper'

	class MessageTest < ActiveSupport::TestCase

	  test 'responds to name, email and body' do 
	    msg = Message.new

	    assert msg.respond_to?(:name),  'does not respond to :name'
	    assert msg.respond_to?(:email), 'does not respond to :email'
	    assert msg.respond_to?(:body),  'does not respond to :body'
	  end
	end=end
end
