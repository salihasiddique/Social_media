class Place {
  final String name;
  final String imageUrl;
  final String description;
  final String imageone;
  final String imagetwo;
  final String imagethree;
   // named parmeters of place constructor
  Place({required this.name, required this.imageUrl, required this.description,required this.imageone,required this.imagetwo,required this.imagethree});
}

List<Place> places = [
  Place(  // instances
    name: 'Germany',
    imageUrl: 'https://images.unsplash.com/photo-1543169108-32ac15a21e05?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Germany is famous for its significant historical timestamps and remnants of iconic cultural events. Blessed with a beautifully varied landscape, from the enchanting Bavarian Alps to the majestic hills of the black forest, this cultural powerhouse is undoubtedly a magnet for a large number of tourists every year.',
    imageone: "https://images.unsplash.com/photo-1467269204594-9661b134dd2b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    imagetwo: "https://plus.unsplash.com/premium_photo-1669748914965-f6709482d65e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    imagethree: "https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Place(
    name: 'France',
    imageUrl: 'https://images.unsplash.com/photo-1470470558828-e00ad9dbbc13?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: "Renowned for its rich cultural heritage, France is a beacon of art and literature, having birthed some of history's greatest creative minds. The country's majestic landmarks, such as the Eiffel Tower, Louvre Museum, and Notre Dame Cathedral, attract millions of visitors annually.",
      imageone: "https://images.unsplash.com/photo-1470470558828-e00ad9dbbc13?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagetwo: "https://images.unsplash.com/photo-1503696967350-ad1874122058?q=80&w=1707&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagethree: "https://images.unsplash.com/photo-1486247496048-cc4ed929f7cc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Place(name: 'India',
      imageUrl:'https://plus.unsplash.com/premium_photo-1661919589683-f11880119fb7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' ,
      description: "India is one of the most preferred tourist destinations in Asia because of its beautiful landscape, rich cultural heritage, myriad attractions and valuable ancient history. India serves as the hub of different cultures and languages within it and has always attracted domestic and international tourists",
      imageone: "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagetwo: "https://images.unsplash.com/photo-1490707843862-104c1ead1918?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagethree: "https://plus.unsplash.com/premium_photo-1661915320026-84ca2c96faa7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),

  Place(name: 'Philippines',
      imageUrl: 'https://plus.unsplash.com/premium_photo-1707028781390-93bd5c1372c3?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      description: 'Famous for its enchantingly beautiful islands, rolling green mountains, exotic beaches, amazing volcanoes, world-class diving spots and unique wildlife among many more attractions, the Philippines is a wonderful travel destination to be in.',
      imageone: "https://images.unsplash.com/photo-1547122891-8aae3f2a03dc?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagetwo: "https://images.unsplash.com/photo-1583841519271-afa6b23c5f77?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagethree: "https://images.unsplash.com/photo-1509850629763-f55dbe6a607e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Place(name: 'Italy',
      imageUrl:'https://images.unsplash.com/photo-1518098268026-4e89f1a2cd8e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      description: 'One of the leading countries in the world in terms of worldwide international tourist arrivals, Italy attracts millions of travelers every year thanks to its fascinating culture, natural landscapes, artistic sites, and renowned cuisine.',
      imageone: "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?q=80&w=1883&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagetwo: "https://images.unsplash.com/photo-1453747063559-36695c8771bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      imagethree: "https://images.unsplash.com/photo-1651309259727-99b5f13f3a1a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  )

];
