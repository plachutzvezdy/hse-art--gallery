class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :about
      t.string :date
      t.string :cover

      t.timestamps
    end
  end
end
