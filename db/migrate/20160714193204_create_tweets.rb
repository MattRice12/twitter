class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.text :body
      add_reference :users, :tweet, index: true
      add_foreign_key :users, :tweets
      t.timestamps
    end
  end
end
