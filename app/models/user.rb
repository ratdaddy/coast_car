class User < ActiveRecord::Base
  has_one :ride
  # No validations - all fields are optional right now
  enum gender: [
                :male,
                :female,
               ]

  enum rider_preference_music_audio: [
                                      :no_music_or_podcasts,
                                      :open_to_anything,
                                      :keep_it_mellow,
                                     ]

  enum rider_preference_smoking: [
                                  :non_smoker,
                                  :smoker,
                                 ]

  enum rider_preference_pets: [
                               :no_pets,
                               :have_a_dog,
                               :have_a_cat,
                               :multiple_pets,
                              ]

  enum rider_preference_allergies: [
                                    :no_allergies,
                                    :pet_allergy,
                                    :other_allergy,
                                   ]

  enum rider_preference_food: [
                               :eat_in_car,
                               :only_at_rest_stops,
                              ]

  enum rider_preference_children: [
                               :no_children,
                               :one_child,
                               :more_than_one_child,
                               ]

  enum rider_preference_conversation: [
                                       :keep_it_quiet,
                                       :talk_a_little,
                                       :talk_a_lot,
                                      ]

  def self.gender_label
    genders.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_music_audio_label
    rider_preference_music_audios.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_smoking_label
    rider_preference_smokings.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_pets_label
    rider_preference_pets.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_allergies_label
    rider_preference_allergies.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_food_label
    rider_preference_foods.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_children_label
    rider_preference_children.map {|e| [e[0].humanize, e[0]] }
  end

  def self.rider_preference_conversation_label
    rider_preference_conversations.map {|e| [e[0].humanize, e[0]] }
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"].fetch("email", nil)
    end
  end
end
