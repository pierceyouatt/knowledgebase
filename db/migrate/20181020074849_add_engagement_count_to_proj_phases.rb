class AddEngagementCountToProjPhases < ActiveRecord::Migration[5.1]
  def change
    add_column :proj_phases, :engagements_count, :integer
  end
end
