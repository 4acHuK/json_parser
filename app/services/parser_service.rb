class ParserService
  def create_data
    create_categories
    create_products
  end

  def create_products
    products = parse_file('data/products.json')
    products.each do |product|
      category_id = Category.where('lower(name) = ?', product['category'].downcase).first.id
      Product.create(name: product['name'], image: product['image'], score: product['score'],
                     price: product['price'], url: product['url'], category_id: category_id )
    end
  end

  def create_categories
    categories = parse_file('data/categories.json')
    categories.each do |category|
      Category.create(name: category)
    end
  end

  def parse_file(json_file)
    file = File.read(json_file)
    JSON.parse(file)
  end
end