class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validate :must_carry_apparel

  def must_carry_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, :invalid, message: "You must carry at least one line of apparel.")
    end
  end
end
