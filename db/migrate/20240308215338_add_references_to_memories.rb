class AddReferencesToMemories < ActiveRecord::Migration[7.1]
  def change
    add_reference :memories, :user, null: false, foreign_key: true
    add_reference :memories, :booking, null: false, foreign_key: true
  end
end
