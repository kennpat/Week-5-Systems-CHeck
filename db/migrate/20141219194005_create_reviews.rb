class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :rest_id, null: false
    	t.integer :rating, null: false
    	t.string :body, null: false

    	t.timestamps
    end
  end
end
