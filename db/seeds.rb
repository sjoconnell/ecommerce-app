Image.create!([
  {image_url: "http://www.leaderboardgolf.co.uk/media/k2/items/cache/095b50b2d3b74bb51d90d91753a1f697_XL.jpg", product_id: 1},
  {image_url: "http://www.jacksgolfingsolutions.com/Graphics/Golf%20Apparel/Golf%20Shoes/Callaway/Callaway%20Mens%20XTT%20LT%20Golf%20Shoes.jpg", product_id: 2},
  {image_url: "http://www.discountgolfworld.com/content/titleist/bucket-hat-08.jpg", product_id: 3},
  {image_url: "http://www.discountgolfworld.com/content/cobra/divot-tool-cbra3011.jpg", product_id: 4},
  {image_url: "http://www.discountgolfworld.com/content/titleist/bm8-ball-marker-hat-ballmarker.jpg", product_id: 5},
  {image_url: "http://www.criticalgolf.com/wp-content/images/bags/ping-4-under-golf-bag-w.jpg", product_id: 6},
  {image_url: "http://shopogolf.com/wp-content/uploads/2014/11/Callaway-Mens-XTT-LT-Golf-ShoeWhiteBrown18-M-US-0-3.jpg", product_id: 2},
  {image_url: "http://media.callawaygolf.com/webupdate/callawaygolf/2012/products/accessories/gloves/xtt-xtreme/spec/xtt-xtreme-wht-glove-front-main-2011.png", product_id: 7}
])
Order.create!([
  {quantity: 4, user_id: 1, product_id: 4, subtotal: 20, tax: 1, total: 21},
  {quantity: 12, user_id: 1, product_id: 7, subtotal: 167, tax: 15, total: 182},
  {quantity: 57, user_id: 1, product_id: 5, subtotal: 56, tax: 5, total: 61},
  {quantity: 3, user_id: 1, product_id: 6, subtotal: 269, tax: 24, total: 294}
])
Product.create!([
  {name: "Golf Shirt", price: "39.99", description: "Blue Puma Golf Shirt", available: nil, supplier_id: 3},
  {name: "Golf Shoes", price: "99.99", description: "Classic Callaway Golf Shoes", available: nil, supplier_id: 4},
  {name: "Golf Hat", price: "25.0", description: "AWESOME! Titliest Bucket Hat", available: nil, supplier_id: 1},
  {name: "Divot Tool", price: "5.0", description: "Black Divot Tool", available: nil, supplier_id: 5},
  {name: "Ball Marker", price: "0.99", description: "Basic White Ball Marker", available: nil, supplier_id: 1},
  {name: "Golf Bag", price: "89.99", description: "Ping Golf Bag with Stand", available: nil, supplier_id: 2},
  {name: "golf Glove", price: "13.99", description: "Terrible Callaway Golf Glove", available: nil, supplier_id: 4}
])
Supplier.create!([
  {name: "Titliest", email: "prov1@gmail.com", phone: "111-111-1111"},
  {name: "Ping", email: "ping@ping.com", phone: "777-777-7777"},
  {name: "Puma", email: "outfit@puma.com", phone: "802-802-8080"},
  {name: "Callaway", email: "philfan@callaway.com", phone: "123-456-7890"},
  {name: "Cobra", email: "snake@cobra.com", phone: "555-555-5555"}
])
