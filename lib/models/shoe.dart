class Shoe {
  final String id;
  final String name;
  final String brand;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;

  Shoe({
    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });
}

List<Shoe> shoes = [
  Shoe(
    id: '1',
    name: 'Air Max 270',
    brand: 'Nike',
    description: 'Comfortable everyday sneakers with Air cushioning.',
    price: 149.99,
    imageUrl: 'assets/shoes/shoe1.png',
    rating: 4.8,
  ),

  Shoe(
    id: '2',
    name: 'Ultraboost 22',
    brand: 'Adidas',
    description: 'Running shoes with responsive Boost technology.',
    price: 179.99,
    imageUrl: 'assets/shoes/shoe2.png',
    rating: 4.7,
  ),

  Shoe(
    id: '3',
    name: 'RS-X',
    brand: 'Puma',
    description: 'Retro-inspired sneakers with bold design.',
    price: 129.99,
    imageUrl: 'assets/shoes/shoe3.png',
    rating: 4.5,
  ),

  Shoe(
    id: '4',
    name: 'Chuck Taylor',
    brand: 'Converse',
    description: 'Classic high-top sneakers.',
    price: 89.99,
    imageUrl: 'assets/shoes/shoe4.png',
    rating: 4.6,
  ),

  Shoe(
    id: '5',
    name: '574 Core',
    brand: 'New Balance',
    description: 'Classic lifestyle sneakers.',
    price: 109.99,
    imageUrl: 'assets/shoes/shoe5.png',
    rating: 4.7,
  ),

  Shoe(
    id: '6',
    name: 'Classic Leather',
    brand: 'Reebok',
    description: 'Minimal leather sneakers.',
    price: 99.99,
    imageUrl: 'assets/shoes/shoe6.png',
    rating: 4.4,
  ),

  Shoe(
    id: '7',
    name: 'Jordan 1 Mid',
    brand: 'Nike',
    description: 'Basketball-inspired streetwear sneakers.',
    price: 159.99,
    imageUrl: 'assets/shoes/shoe7.png',
    rating: 4.9,
  ),

  Shoe(
    id: '8',
    name: 'Air Force 1',
    brand: 'Nike',
    description: 'Iconic white sneakers.',
    price: 119.99,
    imageUrl: 'assets/shoes/shoe8.png',
    rating: 4.8,
  ),

  Shoe(
    id: '9',
    name: 'Forum Low',
    brand: 'Adidas',
    description: 'Retro basketball sneakers.',
    price: 114.99,
    imageUrl: 'assets/shoes/shoe9.png',
    rating: 4.5,
  ),

  Shoe(
    id: '10',
    name: 'Gazelle',
    brand: 'Adidas',
    description: 'Classic suede sneakers.',
    price: 94.99,
    imageUrl: 'assets/shoes/shoe10.png',
    rating: 4.6,
  ),

  Shoe(
    id: '11',
    name: 'Suede Classic',
    brand: 'Puma',
    description: 'Legendary Puma suede design.',
    price: 84.99,
    imageUrl: 'assets/shoes/shoe11.png',
    rating: 4.3,
  ),

  Shoe(
    id: '12',
    name: 'Future Rider',
    brand: 'Puma',
    description: 'Colorful retro running sneakers.',
    price: 104.99,
    imageUrl: 'assets/shoes/shoe12.png',
    rating: 4.4,
  ),

  Shoe(
    id: '13',
    name: 'Run Star Hike',
    brand: 'Converse',
    description: 'Chunky platform sneakers.',
    price: 129.99,
    imageUrl: 'assets/shoes/shoe13.png',
    rating: 4.5,
  ),

  Shoe(
    id: '14',
    name: 'One Star',
    brand: 'Converse',
    description: 'Minimal streetwear sneakers.',
    price: 79.99,
    imageUrl: 'assets/shoes/shoe14.png',
    rating: 4.2,
  ),

  Shoe(
    id: '15',
    name: '327',
    brand: 'New Balance',
    description: 'Modern retro runner.',
    price: 139.99,
    imageUrl: 'assets/shoes/shoe15.png',
    rating: 4.7,
  ),

  Shoe(
    id: '16',
    name: '9060',
    brand: 'New Balance',
    description: 'Premium chunky sneakers.',
    price: 189.99,
    imageUrl: 'assets/shoes/shoe16.png',
    rating: 4.9,
  ),

  Shoe(
    id: '17',
    name: 'Club C 85',
    brand: 'Reebok',
    description: 'Vintage tennis sneakers.',
    price: 89.99,
    imageUrl: 'assets/shoes/shoe17.png',
    rating: 4.4,
  ),

  Shoe(
    id: '18',
    name: 'Nano X3',
    brand: 'Reebok',
    description: 'Training shoes for gym workouts.',
    price: 149.99,
    imageUrl: 'assets/shoes/shoe18.png',
    rating: 4.5,
  ),

  Shoe(
    id: '19',
    name: 'Gel-Kayano 30',
    brand: 'ASICS',
    description: 'Stability running shoes.',
    price: 199.99,
    imageUrl: 'assets/shoes/shoe19.png',
    rating: 4.8,
  ),

  Shoe(
    id: '20',
    name: 'Gel-Lyte III',
    brand: 'ASICS',
    description: 'Retro streetwear runners.',
    price: 129.99,
    imageUrl: 'assets/shoes/shoe20.png',
    rating: 4.6,
  ),

  // 21-60

  Shoe(
    id: '21',
    name: 'ZoomX Vaporfly',
    brand: 'Nike',
    description: 'Elite marathon racing shoes.',
    price: 249.99,
    imageUrl: 'assets/shoes/shoe21.png',
    rating: 4.9,
  ),

  Shoe(
    id: '22',
    name: 'Blazer Mid',
    brand: 'Nike',
    description: 'Vintage basketball sneakers.',
    price: 109.99,
    imageUrl: 'assets/shoes/shoe22.png',
    rating: 4.5,
  ),

  Shoe(
    id: '23',
    name: 'Yeezy Boost 350',
    brand: 'Adidas',
    description: 'Popular lifestyle sneakers.',
    price: 299.99,
    imageUrl: 'assets/shoes/shoe23.png',
    rating: 4.8,
  ),

  Shoe(
    id: '24',
    name: 'NMD R1',
    brand: 'Adidas',
    description: 'Modern urban sneakers.',
    price: 159.99,
    imageUrl: 'assets/shoes/shoe24.png',
    rating: 4.6,
  ),

  Shoe(
    id: '25',
    name: 'Cali Dream',
    brand: 'Puma',
    description: 'Casual chunky sneakers.',
    price: 99.99,
    imageUrl: 'assets/shoes/shoe25.png',
    rating: 4.3,
  ),

  Shoe(
    id: '26',
    name: 'Slipstream',
    brand: 'Puma',
    description: 'Basketball-inspired silhouette.',
    price: 119.99,
    imageUrl: 'assets/shoes/shoe26.png',
    rating: 4.4,
  ),

  Shoe(
    id: '27',
    name: 'Weapon CX',
    brand: 'Converse',
    description: 'Retro basketball sneaker.',
    price: 139.99,
    imageUrl: 'assets/shoes/shoe27.png',
    rating: 4.4,
  ),

  Shoe(
    id: '28',
    name: '550',
    brand: 'New Balance',
    description: 'Trending vintage basketball shoes.',
    price: 149.99,
    imageUrl: 'assets/shoes/shoe28.png',
    rating: 4.8,
  ),

  Shoe(
    id: '29',
    name: 'Floatride Energy',
    brand: 'Reebok',
    description: 'Lightweight running sneakers.',
    price: 119.99,
    imageUrl: 'assets/shoes/shoe29.png',
    rating: 4.4,
  ),

  Shoe(
    id: '30',
    name: 'Gel-Nimbus',
    brand: 'ASICS',
    description: 'Soft cushioning running shoes.',
    price: 189.99,
    imageUrl: 'assets/shoes/shoe30.png',
    rating: 4.7,
  ),

  Shoe(
    id: '31',
    name: 'Old Skool',
    brand: 'Vans',
    description: 'Classic skate sneakers.',
    price: 74.99,
    imageUrl: 'assets/shoes/shoe31.png',
    rating: 4.6,
  ),

  Shoe(
    id: '32',
    name: 'Sk8-Hi',
    brand: 'Vans',
    description: 'High-top skate shoes.',
    price: 84.99,
    imageUrl: 'assets/shoes/shoe32.png',
    rating: 4.5,
  ),

  Shoe(
    id: '33',
    name: 'UA HOVR',
    brand: 'Under Armour',
    description: 'Performance running sneakers.',
    price: 139.99,
    imageUrl: 'assets/shoes/shoe33.png',
    rating: 4.4,
  ),

  Shoe(
    id: '34',
    name: 'Curry Flow',
    brand: 'Under Armour',
    description: 'Basketball performance shoes.',
    price: 169.99,
    imageUrl: 'assets/shoes/shoe34.png',
    rating: 4.7,
  ),

  Shoe(
    id: '35',
    name: 'Wave Rider',
    brand: 'Mizuno',
    description: 'Smooth ride running shoes.',
    price: 149.99,
    imageUrl: 'assets/shoes/shoe35.png',
    rating: 4.5,
  ),

  Shoe(
    id: '36',
    name: 'Wave Sky',
    brand: 'Mizuno',
    description: 'Premium cushioning sneakers.',
    price: 179.99,
    imageUrl: 'assets/shoes/shoe36.png',
    rating: 4.6,
  ),

  Shoe(
    id: '37',
    name: 'Fresh Foam X',
    brand: 'New Balance',
    description: 'Soft foam running shoes.',
    price: 164.99,
    imageUrl: 'assets/shoes/shoe37.png',
    rating: 4.8,
  ),

  Shoe(
    id: '38',
    name: 'Air Zoom Pegasus',
    brand: 'Nike',
    description: 'Reliable daily running shoes.',
    price: 139.99,
    imageUrl: 'assets/shoes/shoe38.png',
    rating: 4.7,
  ),

  Shoe(
    id: '39',
    name: 'Superstar',
    brand: 'Adidas',
    description: 'Legendary shell toe sneakers.',
    price: 99.99,
    imageUrl: 'assets/shoes/shoe39.png',
    rating: 4.6,
  ),

  Shoe(
    id: '40',
    name: 'ZX 2K Boost',
    brand: 'Adidas',
    description: 'Futuristic boost sneakers.',
    price: 159.99,
    imageUrl: 'assets/shoes/shoe40.png',
    rating: 4.5,
  ),

  Shoe(
    id: '41',
    name: 'Clyde OG',
    brand: 'Puma',
    description: 'Vintage basketball classic.',
    price: 109.99,
    imageUrl: 'assets/shoes/shoe41.png',
    rating: 4.4,
  ),

  Shoe(
    id: '42',
    name: 'Chuck 70',
    brand: 'Converse',
    description: 'Premium classic sneakers.',
    price: 94.99,
    imageUrl: 'assets/shoes/shoe42.png',
    rating: 4.7,
  ),

  Shoe(
    id: '43',
    name: 'Nano Adventure',
    brand: 'Reebok',
    description: 'Outdoor training shoes.',
    price: 129.99,
    imageUrl: 'assets/shoes/shoe43.png',
    rating: 4.3,
  ),

  Shoe(
    id: '44',
    name: 'Gel-Quantum',
    brand: 'ASICS',
    description: 'High-tech cushioning sneakers.',
    price: 169.99,
    imageUrl: 'assets/shoes/shoe44.png',
    rating: 4.6,
  ),

  Shoe(
    id: '45',
    name: 'Authentic',
    brand: 'Vans',
    description: 'Minimal everyday skate shoes.',
    price: 69.99,
    imageUrl: 'assets/shoes/shoe45.png',
    rating: 4.5,
  ),

  Shoe(
    id: '46',
    name: 'Slip-On',
    brand: 'Vans',
    description: 'Easy casual slip-on sneakers.',
    price: 64.99,
    imageUrl: 'assets/shoes/shoe46.png',
    rating: 4.4,
  ),

  Shoe(
    id: '47',
    name: 'Project Rock',
    brand: 'Under Armour',
    description: 'Training shoes by The Rock.',
    price: 159.99,
    imageUrl: 'assets/shoes/shoe47.png',
    rating: 4.7,
  ),

  Shoe(
    id: '48',
    name: 'Wave Inspire',
    brand: 'Mizuno',
    description: 'Supportive running sneakers.',
    price: 144.99,
    imageUrl: 'assets/shoes/shoe48.png',
    rating: 4.5,
  ),

  Shoe(
    id: '49',
    name: '990v6',
    brand: 'New Balance',
    description: 'Premium made-in-USA sneakers.',
    price: 219.99,
    imageUrl: 'assets/shoes/shoe49.png',
    rating: 4.9,
  ),

  Shoe(
    id: '50',
    name: 'Dunk Low',
    brand: 'Nike',
    description: 'Streetwear basketball sneakers.',
    price: 139.99,
    imageUrl: 'assets/shoes/shoe50.png',
    rating: 4.8,
  ),

  Shoe(
    id: '51',
    name: 'Stan Smith',
    brand: 'Adidas',
    description: 'Minimal tennis-inspired shoes.',
    price: 94.99,
    imageUrl: 'assets/shoes/shoe51.png',
    rating: 4.6,
  ),

  Shoe(
    id: '52',
    name: 'Future Z',
    brand: 'Puma',
    description: 'Sport-inspired sneakers.',
    price: 124.99,
    imageUrl: 'assets/shoes/shoe52.png',
    rating: 4.4,
  ),

  Shoe(
    id: '53',
    name: 'Jack Purcell',
    brand: 'Converse',
    description: 'Clean tennis-inspired style.',
    price: 79.99,
    imageUrl: 'assets/shoes/shoe53.png',
    rating: 4.3,
  ),

  Shoe(
    id: '54',
    name: 'Classic Nylon',
    brand: 'Reebok',
    description: 'Retro lightweight runners.',
    price: 84.99,
    imageUrl: 'assets/shoes/shoe54.png',
    rating: 4.2,
  ),

  Shoe(
    id: '55',
    name: 'Gel-Resolution',
    brand: 'ASICS',
    description: 'Tennis performance sneakers.',
    price: 159.99,
    imageUrl: 'assets/shoes/shoe55.png',
    rating: 4.6,
  ),

  Shoe(
    id: '56',
    name: 'Knu Skool',
    brand: 'Vans',
    description: 'Chunky Y2K skate shoes.',
    price: 89.99,
    imageUrl: 'assets/shoes/shoe56.png',
    rating: 4.7,
  ),

  Shoe(
    id: '57',
    name: 'Charged Assert',
    brand: 'Under Armour',
    description: 'Affordable running sneakers.',
    price: 89.99,
    imageUrl: 'assets/shoes/shoe57.png',
    rating: 4.4,
  ),

  Shoe(
    id: '58',
    name: 'Wave Prophecy',
    brand: 'Mizuno',
    description: 'Futuristic running silhouette.',
    price: 229.99,
    imageUrl: 'assets/shoes/shoe58.png',
    rating: 4.8,
  ),

  Shoe(
    id: '59',
    name: 'FuelCell Rebel',
    brand: 'New Balance',
    description: 'Fast lightweight running shoes.',
    price: 149.99,
    imageUrl: 'assets/shoes/shoe59.png',
    rating: 4.7,
  ),

  Shoe(
    id: '60',
    name: 'Metcon 9',
    brand: 'Nike',
    description: 'Training sneakers for gym sessions.',
    price: 149.99,
    imageUrl: 'assets/shoes/shoe60.png',
    rating: 4.8,
  ),
];