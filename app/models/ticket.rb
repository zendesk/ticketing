class Ticket < ActiveRecord::Base
  has_many   :comments
  belongs_to :assignee, class_name:  "User",
                        foreign_key: "assignee_id"
  belongs_to :reporter, class_name:  "User",
                        foreign_key: "reporter_id"

## Let's do Status Ids:
## New     : 0
## Open    : 1
## Waiting : 2
## Solved  : 3
## Gone    : 4
  scope :active, -> { where('status_id < 3') }
  scope :inactive, -> { where('status_id > 3') }
end
