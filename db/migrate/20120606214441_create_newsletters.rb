class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :subject
      t.text :body
      t.boolean :sent, :default => false
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamp
    end
  end
end
