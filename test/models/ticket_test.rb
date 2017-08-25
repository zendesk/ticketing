require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "the presence of subject and description when creating a new ticket" do
     ticket = Ticket.new
     ticket.save
     assert_equals ticket.valid? false

     ticket.subject = "Hello Subject"
     ticket.description = "Hello Description"
     ticket.save
     assert ticket.valid?
   end

end
