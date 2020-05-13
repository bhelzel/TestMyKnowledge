class FixMigration < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :test
    add_column :questions, :test, :string, null: false
  end
end
