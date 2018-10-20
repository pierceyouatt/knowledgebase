class Solution < ApplicationRecord
  # Direct associations

  has_many   :project_types,
             :foreign_key => "sol_id"

  has_many   :engagements,
             :foreign_key => "sol_id"

  # Indirect associations

  # Validations

end
