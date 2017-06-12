class CreateDumbCounters < ActiveRecord::Migration
  def change
    create_table :dumb_counters do |t|
      t.string :name
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps null: false
    end
  end
end
