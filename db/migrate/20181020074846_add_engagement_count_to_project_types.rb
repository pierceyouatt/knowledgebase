class AddEngagementCountToProjectTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :project_types, :engagements_count, :integer
  end
end
