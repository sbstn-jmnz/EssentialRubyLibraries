require "minitest/autorun"
require "minitest/utils"
require "pry-byebug"
require "csv"

class Product
  #code
end

class ProductRepository
  #code
end

class ProductRepositoryTest < MiniTest::Test
  def setup
    FileUtils.rm ProductRepository::File rescue nil
    ProductRepository.create Product.new("Microphone", 200, "Audio")
  end

  def test_retrieves_a_list_of_products
    assert_kind_of Product, ProductRepository.all.first
  end

  def test_creates_a_record_based_off_a_product
    assert_equal 1, ProductRepository.all.length
  end

  def test_finds_a_record_by_key
    assert_kind_of Product, ProductRepository.find(0)
  end
  
end
