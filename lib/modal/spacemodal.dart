
class SolarSystem {
  final String name;
  final String type;
  final String description;
  final int diameterKm;
  final double massKg;
  final dynamic gravityMs2;
  final String composition;
  final String image;
  final dynamic? orbitalPeriodDays;
  final double? orbitalPeriodYears;
  final List<Moon>? moons;

  SolarSystem({
    required this.name,
    required this.type,
    required this.description,
    required this.diameterKm,
    required this.massKg,
    required this.gravityMs2,
    required this.composition,
    required this.image,
    this.orbitalPeriodDays,
    this.orbitalPeriodYears,
    this.moons,
  });

  factory SolarSystem.fromJson(Map json) {
    return SolarSystem(
      name: json['name'],
      type: json['type']??null,
      description: json['description'],
      diameterKm: json['diameter_km'],
      massKg: json['mass_kg'],
      gravityMs2: json['gravity_m_s2'],
      composition: json['composition'],
      image: json['image'],
      orbitalPeriodDays: json['orbital_period_days'],
      orbitalPeriodYears: json['orbital_period_years'],
      moons: (json['moons'] as List?)?.map((m) => Moon.fromJson(m)).toList(),
    );
  }
}

class Moon {
  final String name;
  final dynamic diameterKm;
  final double gravityMs2;
  final String description;
  final String image;

  Moon({
    required this.name,
    required this.diameterKm,
    required this.gravityMs2,
    required this.description,
    required this.image,
  });

  factory Moon.fromJson(Map json) {
    return Moon(
      name: json['name'],
      diameterKm: json['diameter_km'],
      gravityMs2: json['gravity_m_s2'],
      description: json['description'],
      image: json['image'],
    );
  }
}