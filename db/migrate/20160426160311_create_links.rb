class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link_url
      t.string :title
      t.string :url_title
      t.string :url_h1
      t.binary :read_status, default: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
