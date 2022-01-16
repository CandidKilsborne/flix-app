class Movie < ApplicationRecord
  def flop?
    self.total_gross.blank? || self.total_gross < 225_000_000
  end
end
