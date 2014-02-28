class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :url
      t.string :title
      t.references :user
      t.timestamps
    end
  end
end
