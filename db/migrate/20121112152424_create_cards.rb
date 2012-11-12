class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :tag
      t.string :author
      t.string :date
      t.text :evidence

      t.timestamps
    end
  end
end
