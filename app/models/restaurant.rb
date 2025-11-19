class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # "dependent: :destroy" tells Rails: "If this parent object is deleted, automatically delete all of its children too."
  # Imagine you have a restaurant called "Sushi Palace" (ID: 1), and it has 50 reviews linked to it.
  # If you delete "Sushi Palace" from your database:
  # With dependent: :destroy: Rails deletes the restaurant AND immediately deletes those 50 reviews. The database is clean.
  # Without it: Rails deletes the restaurant, but the 50 reviews stay in the database. They still point to restaurant_id: 1, but restaurant #1 no longer exists.

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
