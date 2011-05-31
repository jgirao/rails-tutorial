class CreatePublications < ActiveRecord::Migration
  def self.up
    create_table :publications do |t|
      t.integer :author_id
      t.integer :paper_id

      t.timestamps
    end
  end

  def self.down
    drop_table :publications
  end
end
