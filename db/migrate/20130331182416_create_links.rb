class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.text :keywords
      t.string :title
      t.text :summary_title
      t.text :summary_text
      t.text :description
      t.string :sourced_from

      t.timestamps
    end
  end
end
