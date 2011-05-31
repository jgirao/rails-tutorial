class CreatePapers < ActiveRecord::Migration
  def self.up
    create_table :papers do |t|
      t.string :title, :null => false
      t.text :abstract
      t.date :submitted
      t.date :accepted
      t.boolean :rejected, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :papers
  end
end
