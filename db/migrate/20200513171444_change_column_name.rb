class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :knowledge_test
    add_column :questions, :test, :string
  end
end
