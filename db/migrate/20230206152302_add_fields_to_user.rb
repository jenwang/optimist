class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
    t.string :first_name
    t.string :last_name
    t.string :display_name
    t.string :pronouns
    t.string :pronunciation
    t.boolean :override_titlecase

    t.integer  :sign_in_count, default: 0, null: false
    t.datetime :current_sign_in_at
    t.datetime :last_sign_in_at
    t.string   :current_sign_in_ip
    t.string   :last_sign_in_ip
    end
  end
end
