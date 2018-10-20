class Employee < ApplicationRecord
  # Direct associations

  has_many   :engagements,
             :foreign_key => "empl_id"

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
