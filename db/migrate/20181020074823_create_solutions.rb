class CreateSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :solutions do |t|
      t.string :sol_name

      t.timestamps
    end
  end
end
