class AddUniqueIndexToRoles < ActiveRecord::Migration[7.1]
  def change
    add_index :roles, :slug, unique: true,
              comment: 'Унікальний індекс короткої назви'
  end
end
