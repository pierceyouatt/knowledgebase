class CreateEngagements < ActiveRecord::Migration[5.1]
  def change
    create_table :engagements do |t|
      t.integer :empl_id
      t.integer :inst_id
      t.integer :sol_id
      t.string :eng_name
      t.string :eng_number
      t.string :sp_link
      t.string :eng_summary
      t.integer :type_id
      t.integer :phase_id

      t.timestamps
    end
  end
end
