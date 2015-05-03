class Ride < ActiveRecord::Base
  # Any validations?
  enum luggage_restriction: [
                             :carry_on_only,
                             :one_bag,
                             :two_bags,
                            ]

  enum car_comfort_level: [
                           :one_star,
                           :two_star,
                           :three_star,
                           :four_star,
                           :five_star,
                          ]

  enum car_condition: [
                       :excellent,
                       :good,
                       :fair,
                       :poor,
                      ]

  def self.luggage_restriction_label
    luggage_restrictions.map {|e| [e[0].humanize, e[0]] }
  end

  def self.car_comfort_level_label
    car_comfort_levels.map {|e| [e[0].humanize, e[0]] }
  end

  def self.car_condition_label
    car_conditions.map {|e| [e[0].humanize, e[0]] }
  end
end
