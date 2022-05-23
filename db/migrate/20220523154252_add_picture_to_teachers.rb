class AddPictureToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :picture, :string
  end
end
