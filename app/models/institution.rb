class Institution < ApplicationRecord
  # Direct associations

  has_many   :engagements,
             :foreign_key => "inst_id"

  # Indirect associations

  # Validations

end
