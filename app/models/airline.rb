class Airline < ApplicationRecord
  has_many :reviews

  before_create :slugify # sets slug before created in db

  def slugify
    self.slug = name.parameterize # URL safe version of airline name
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
