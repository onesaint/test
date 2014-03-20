class CreateJobs < ActiveRecord::Migration
  def up
    create_table :jobs do |t|
      t.string :company_name
      t.string :province
      t.string :position
      t.integer :numb
      t.string :qualification
      t.date :start_date
      t.date :deadline
      t.string :link
      t.string :picture

      t.timestamps
    end
  end

  def down
    drop_table :jobs
  end
end
