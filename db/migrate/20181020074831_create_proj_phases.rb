class CreateProjPhases < ActiveRecord::Migration[5.1]
  def change
    create_table :proj_phases do |t|
      t.string :phase_name
      t.integer :type_id

      t.timestamps
    end
  end
end
