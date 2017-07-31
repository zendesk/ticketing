require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # describe ".inactive" do
    test "it includes solved tickets" do
      ticket = Ticket.where(status_id: 3).first

      assert_includes Ticket.inactive, ticket
    end
  # end
end
