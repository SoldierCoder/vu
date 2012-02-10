class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :campaign_id
      t.integer :user_id
      t.integer :times
      t.string :interval
      t.text :tweet

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
