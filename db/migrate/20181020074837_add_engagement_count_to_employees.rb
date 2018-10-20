class AddEngagementCountToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :engagements_count, :integer
  end
end
