class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand

    brand_exists = BRANDS.any? do |existing_brand|
      existing_brand.downcase == brand.downcase
    end

    BRANDS << brand if !brand_exists
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
