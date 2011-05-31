class AddGenderToAuthor < ActiveRecord::Migration
  def self.up
    add_column :authors, :male, :boolean
  end

  def self.down
    remove_column :authors, :male
  end
end
