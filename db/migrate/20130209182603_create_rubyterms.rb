class CreateRubyterms < ActiveRecord::Migration
  def change
    create_table :rubyterms do |t|
      t.string :rubyterm

      t.timestamps
    end
  end
end
