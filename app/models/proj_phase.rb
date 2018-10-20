class ProjPhase < ApplicationRecord
  # Direct associations

  has_many   :engagements,
             :foreign_key => "phase_id"

  belongs_to :type,
             :class_name => "ProjectType"

  # Indirect associations

  # Validations

end
