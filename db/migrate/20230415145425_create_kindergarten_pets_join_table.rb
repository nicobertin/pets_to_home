class CreateKindergartenPetsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :kindergartens_pets, id: false do |t|
      t.bigint :kindergarten_id
      t.bigint :pet_id
    end

    add_index :kindergartens_pets, :kindergarten_id
    add_index :kindergartens_pets, :pet_id
    add_foreign_key :kindergartens_pets, :kindergartens
    add_foreign_key :kindergartens_pets, :pets
  end
end
