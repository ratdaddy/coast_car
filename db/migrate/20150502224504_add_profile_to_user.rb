class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthdate, :date
    add_column :users, :gender, :integer
    add_column :users, :drivers_license_state, :string, limit: 50
    add_column :users, :drivers_insurance_company, :string
    add_column :users, :rider_restriction_allow_music, :boolean
    add_column :users, :rider_restriction_non_smoking, :boolean
    add_column :users, :rider_restriction_allow_dogs, :boolean
    add_column :users, :rider_restriction_allow_cats, :boolean
    add_column :users, :rider_restriction_allow_kids, :boolean
    add_column :users, :rider_restriction_allow_food, :boolean
    add_column :users, :rider_default_number_of_seats, :integer
    add_column :users, :rider_preference_music_audio, :integer
    add_column :users, :rider_preference_smoking, :integer
    add_column :users, :rider_preference_pets, :integer
    add_column :users, :rider_preference_allergies, :integer
    add_column :users, :rider_preference_food, :integer
    add_column :users, :rider_preference_children, :integer
    add_column :users, :rider_preference_conversation, :integer
  end
end
