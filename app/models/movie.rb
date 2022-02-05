class Movie < ApplicationRecord
  def self.released
    where("released_on < ?", Time.now).order(released_on: :desc)
  end

  def flop?
    self.total_gross.blank? || self.total_gross < 225_000_000
  end
end
