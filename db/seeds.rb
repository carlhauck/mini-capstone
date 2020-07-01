Supplier.create!([
  {name: "National Treasure Warehouse", email: "ntwarehouse@gmail.com", phone_number: "528-283-4297"},
  {name: "Household Supply 4 U", email: "householdsupply4u@hotmail.com", phone_number: "529-777-5254"},
  {name: "Arcades R Us", email: "warehouse@arcadesrus.com", phone_number: "713-443-7159"}
])
Product.create!([
  {name: "Window", price: "300.0", description: "See through it! Keep birds out!", in_stock?: true, supplier_id: 2},
  {name: "Table", price: "150.0", description: "Set things on it and they won't fall through and hit the floor.", in_stock?: true, supplier_id: 2},
  {name: "Sweatpants", price: "25.0", description: "Keep the bees away from your legs.", in_stock?: true, supplier_id: 1},
  {name: "Used Big Bertha Arcade Game", price: "950.0", description: "Make your home feel a little more like Chuck E. Cheese.", in_stock?: true, supplier_id: 3},
  {name: "Fly swatter", price: "1.5", description: "Want to make that ceaseless buzzing stop?", in_stock?: true, supplier_id: 2},
  {name: "Chair", price: "105.0", description: "Take a load off, friend.", in_stock?: true, supplier_id: 2}
])
User.create!([
  {first_name: "Carl", last_name: "Hauck", email: "carlhauck@gmail.com", password_digest: "$2a$12$4G4yOdHn5dT5I3p359nL5Obl0y30zEYFal0tmiMnejd.pXdDruDeG", admin: false},
  {first_name: "Abi", last_name: "Humber", email: "crabigail@gmail.com", password_digest: "$2a$12$jGNdaV8mSO8j9VpHyZgYse7QqYmRyWB7gOlDGm3rrrdMFK04lHEPq", admin: false},
  {first_name: "Admin", last_name: "Jones", email: "adminjones@gmail.com", password_digest: "$2a$12$PyXMngODMx5UAZgJ4xtWKehcbAgGBvljgHnzmIBaEA1Q3D.wpdOl.", admin: true}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 2, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 1, quantity: 2, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 1, quantity: 2, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 2, quantity: 1, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 2, quantity: 1, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 2, quantity: 1, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 2, quantity: 1, status: "purchased", order_id: 7}
])
Category.create!([
  {name: "Clothing"},
  {name: "Household"},
  {name: "Arcade"}
])
Image.create!([
  {url: "https://contestimg.wish.com/api/webimage/5ba44688236cce377bb52685-large.jpg?cache_buster=978868a7abef943d5963ca125b8b4c78", product_id: 13},
  {url: "https://images.proxibid.com/AuctionImages/10896/153499/FullSize/20-1.jpg", product_id: 14},
  {url: "https://s7d4.scene7.com/is/image/roomandboard/698884_wood_W?size=600,630&scl=1&layer=comp&op_sharpen=1", product_id: 12},
  {url: "https://texasenergyexperts.com/wp-content/uploads/2017/04/replacement-windows-lake-quivira.jpg", product_id: 3},
  {url: "https://images.homedepot-static.com/productImages/3bb8e409-324c-419b-8c55-fd02ed3e8957/svn/cherry-wood-seat-cherry-wood-frame-flash-furniture-dining-chairs-xudgw0008vrtchy-64_600.jpg", product_id: 2},
  {url: "https://res.cloudinary.com/forallpromos/image/fetch/f_auto/https://www.4allpromos.com/sites/default/files/imagecache/420x420/candypress/ProdImages/large/388-1034.jpg", product_id: 1},
  {url: "https://static01.nyt.com/images/2012/05/27/magazine/27wmt/mag-27WMT-t_CA0-superJumbo.jpg", product_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: "200.0", tax: "20.5", total: "220.5"},
  {user_id: 2, subtotal: "300.0", tax: "30.75", total: "330.75"},
  {user_id: 1, subtotal: "300.0", tax: "30.75", total: "330.75"},
  {user_id: 2, subtotal: "1.5", tax: "0.15", total: "1.65"},
  {user_id: 1, subtotal: "409.0", tax: "41.92", total: "450.92"},
  {user_id: 1, subtotal: "409.0", tax: "41.92", total: "450.92"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 2},
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 2},
  {product_id: 13, category_id: 1},
  {product_id: 12, category_id: 2},
  {product_id: 14, category_id: 3}
])