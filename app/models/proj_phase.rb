class ProjPhase < ApplicationRecord
  # Direct associations

  belongs_to :type,
             :class_name => "ProjectType"

  # Indirect associations

  # Validations

end
