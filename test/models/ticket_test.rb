require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe "#statuses" do
    it "is an array" do
      assert Ticket.new.statuses.class == Array
    end
    
    it "Contains our required statuses" do
      statuses = Ticket.new.statuses
      assert_equal statuses, ["New", "Open", "Waiting", "Solved", "Closed"]
  end
end
