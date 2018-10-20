class Solution < ApplicationRecord
  # Direct associations

  has_many   :engagements,
             :foreign_key => "sol_id"

  # Indirect associations

  # Validations

end
