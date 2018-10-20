class AddEngagementCountToSolutions < ActiveRecord::Migration[5.1]
  def change
    add_column :solutions, :engagements_count, :integer
  end
end
