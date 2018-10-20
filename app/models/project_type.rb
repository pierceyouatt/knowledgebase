class ProjectType < ApplicationRecord
  # Direct associations

  belongs_to :sol,
             :class_name => "Solution"

  # Indirect associations

  # Validations

end
