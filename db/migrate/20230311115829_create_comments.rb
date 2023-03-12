class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer     :graduating_class
      t.string      :name,             null: false
      t.text        :message,          null: false
      t.references  :article,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
