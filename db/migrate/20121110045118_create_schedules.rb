class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :criteria

      t.timestamps
    end
  end
end
