class Engagement < ApplicationRecord
  # Direct associations

  belongs_to :empl,
             :required => false,
             :class_name => "Employee",
             :counter_cache => true

  # Indirect associations

  # Validations

end
