class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles, comment: 'Роль користувача' do |t|
      t.string :name, comment: 'Повна назва'
      t.string :slug, comment: 'Корока назва/позначення'

      t.timestamps
    end
  end
end
