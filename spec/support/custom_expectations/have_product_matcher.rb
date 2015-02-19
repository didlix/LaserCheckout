RSpec::Matchers.define :have_product do |expected|
  match do |actual|
    actual.each do |product|
      if(product.code == expected)
        return true
      end
    end

     return false
  end
end
