class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :tag
      t.string :author
      t.integer :year

      t.timestamps
    end
  end
end
