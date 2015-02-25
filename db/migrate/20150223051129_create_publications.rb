class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.date :date_publish
      t.text :description
      t.string :arquive

      t.timestamps null: false
    end
  end
end
