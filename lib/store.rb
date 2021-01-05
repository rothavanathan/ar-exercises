class Store < ActiveRecord::Base
  has_many :employees, :dependent => :destroy
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validate :must_carry_apparel

  before_destroy :can_destroy_store?, prepend: true

  def must_carry_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, :invalid, message: "You must carry at least one line of apparel.")
    end
  end

  private
  def can_destroy_store?
    puts self.employees.count 
    if self.employees.count > 1
      puts "destroy_store cancelled"
      return false
    end
  end
end
