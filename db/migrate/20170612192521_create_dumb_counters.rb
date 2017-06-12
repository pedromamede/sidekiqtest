class CreateDumbCounters < ActiveRecord::Migration
  def change
    create_table :dumb_counters do |t|

      t.timestamps null: false
    end
  end
end
