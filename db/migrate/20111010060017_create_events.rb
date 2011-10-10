class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :competition_id
      t.string :name
      t.boolean :is_male, :null => false, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
