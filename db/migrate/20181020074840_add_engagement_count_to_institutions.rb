class AddEngagementCountToInstitutions < ActiveRecord::Migration[5.1]
  def change
    add_column :institutions, :engagements_count, :integer
  end
end
