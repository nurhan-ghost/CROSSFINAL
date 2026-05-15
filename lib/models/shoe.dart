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
    imageUrl: 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSdNq-gAde1ZJgYEX1GDIOkzQ6AVwaaBkZ3o_diZCmG9SMvgLScKNDs1rW1H0q7nawEXjq8bvOJCBLtqeZ0Rz0YejI3jGaMovXXwpXGFTCr4gPNSQZOohJe-fm3pkKwjTnLuXRLHYc&usqp=CAc',
    rating: 4.8,
  ),

  Shoe(
    id: '2',
    name: 'Ultraboost 22',
    brand: 'Adidas',
    description: 'Running shoes with responsive Boost technology.',
    price: 179.99,
    imageUrl: 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTx4UOcm9xdEEVYPH1jkLtbU0ovSQTEEvPB-cv6PdaBEwSOPjav0TTpum1c73l_x2JBodERU71WD0HZCu3cVwVT0N2v5nq15x70oLgN5cD2sqy5FM-FMzeKOWrvaaD3EghE9dciiwwcSOM&usqp=CAc',
    rating: 4.7,
  ),

  Shoe(
    id: '3',
    name: 'RS-X',
    brand: 'Puma',
    description: 'Retro-inspired sneakers with bold design.',
    price: 129.99,
    imageUrl: 'data:image/webp;base64,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',
    rating: 4.5,
  ),

  Shoe(
    id: '4',
    name: 'Chuck Taylor',
    brand: 'Converse',
    description: 'Classic high-top sneakers.',
    price: 89.99,
    imageUrl: 'data:image/jpeg;base64,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',
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