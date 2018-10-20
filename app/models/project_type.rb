class ProjectType < ApplicationRecord
  # Direct associations

  has_many   :engagements,
             :foreign_key => "type_id"

  has_many   :proj_phases,
             :foreign_key => "type_id"

  belongs_to :sol,
             :class_name => "Solution"

  # Indirect associations

  # Validations

end
