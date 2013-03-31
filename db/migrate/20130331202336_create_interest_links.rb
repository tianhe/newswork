class CreateInterestLinks < ActiveRecord::Migration
  def change
    create_table :interest_links do |t|
      t.integer :interest_id
      t.integer :link_id

      t.timestamps
    end
  end
end
