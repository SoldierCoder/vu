class CreateCannedTweets < ActiveRecord::Migration
  def self.up
    create_table :canned_tweets do |t|
      t.integer   :campaign_id
      t.text      :message

      t.timestamps
    end
  end

  def self.down
    drop_table :canned_tweets
  end
end
