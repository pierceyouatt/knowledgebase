class Engagement < ApplicationRecord
  # Direct associations

  belongs_to :type,
             :class_name => "ProjectType",
             :counter_cache => true

  belongs_to :sol,
             :class_name => "Solution",
             :counter_cache => true

  belongs_to :inst,
             :class_name => "Institution",
             :counter_cache => true

  belongs_to :empl,
             :required => false,
             :class_name => "Employee",
             :counter_cache => true

  # Indirect associations

  # Validations

end
