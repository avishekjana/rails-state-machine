class AddAasmStateToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :aasm_state, :string
  end
end
