final List<Map<String, dynamic>> solarSystem = [
  {
    "name": "Sun",
    "type": "Star",
    "description": "The center of the solar system, providing energy to all planets.",
    "diameter_km": 1391016,
    "mass_kg": 1.989e30,
    "temperature_k": 5778,
    "gravity_m_s2": 274,
    "composition": "Hydrogen (74%), Helium (24%), Others (2%)",
    "image": "assets/image/sun.gif"
  },
  {
    "name": "Mercury",
    "type": "Planet",
    "description": "Closest planet to the Sun, a small rocky planet with extreme temperature variations.",
    "diameter_km": 4879,
    "mass_kg": 3.3011e23,
    "orbital_period_days": 88,
    "orbital_period_years": 0.24,
    "gravity_m_s2": 3.7,
    "composition": "Silicate rock and iron",
    "moons": [],
    "image": "assets/image/mercury.gif"
  },
  {
    "name": "Venus",
    "type": "Planet",
    "description": "Similar in size to Earth but with a thick, toxic atmosphere causing a greenhouse effect.",
    "diameter_km": 12104,
    "mass_kg": 4.8675e24,
    "orbital_period_days": 225,
    "orbital_period_years": 0.62,
    "gravity_m_s2": 8.87,
    "composition": "Carbon dioxide (96%), Nitrogen (3.5%)",
    "moons": [],
    "image": "assets/image/venus.gif"
  },
  {
    "name": "Earth",
    "type": "Planet",
    "description": "The only known planet to support life, with a diverse atmosphere and liquid water.",
    "diameter_km": 12742,
    "mass_kg": 5.972e24,
    "orbital_period_days": 365,
    "orbital_period_years": 1.0,
    "gravity_m_s2": 9.81,
    "composition": "Nitrogen (78%), Oxygen (21%), Others (1%)",
    "moons": [
    ],
    "image": "assets/image/earth.gif"
  },
  {
    "name": "Moon",
    "type": "Planet",
    "diameter_km": 3474,
    "gravity_m_s2": 1.62,
    "mass_kg": 7.35e22,
    "distance_from_earth_km": 384400,
    "orbital_period_days": 27.3,
    "orbital_period_years": 1.0,
    "temperature_min_c": -173,
    "temperature_max_c": 127,
    "composition": "Regolith, Basalt, Plagioclase",
    "description": "Earth’s only natural satellite, affecting tides and stabilizing the planet’s axis.",
    "image": "assets/image/moon.gif"
  }
,
  {
    "name": "Mars",
    "type": "Planet",
    "description": "The Red Planet with the tallest volcano and evidence of past water.",
    "diameter_km": 6779,
    "mass_kg": 6.4171e23,
    "orbital_period_days": 687,
    "orbital_period_years": 1.88,
    "gravity_m_s2": 3.71,
    "composition": "Carbon dioxide (95.3%), Nitrogen (2.7%)",
    "moons": [
      {
        "name": "Phobos",
        "diameter_km": 22.4,
        "gravity_m_s2": 0.0057,
        "description": "One of Mars’ two small moons, likely captured asteroids.",
        "image": "assets/image/phobos.png"
      },
      {
        "name": "Deimos",
        "diameter_km": 12.4,
        "gravity_m_s2": 0.003,
        "description": "The smaller of Mars’ moons, with an irregular shape.",
        "image": "assets/image/deimos.png"
      }
    ],
    "image": "assets/image/mars.gif"
  },

  {
    "name": "Jupiter",
    "type": "Planet",
    "description": "The largest planet, a gas giant with a Great Red Spot storm.",
    "diameter_km": 139820,
    "mass_kg": 1.898e27,
    "orbital_period_days": 4333,
    "orbital_period_years": 11.86,
    "gravity_m_s2": 24.79,
    "composition": "Hydrogen (89%), Helium (10%)",
    "moons": [
      {
        "name": "Io",
        "diameter_km": 3643,
        "gravity_m_s2": 1.8,
        "description": "The most volcanically active body in the solar system.",
        "image": "assets/image/io.png"
      },
      {
        "name": "Europa",
        "diameter_km": 3122,
        "gravity_m_s2": 1.31,
        "description": "An ice-covered moon with a subsurface ocean that may harbor life.",
        "image": "assets/image/europa.png"
      }
    ],
    "image": "assets/image/jupiter.gif"
  },
  {
    "name": "Saturn",
    "type": "Planet",
    "description": "A gas giant famous for its extensive ring system.",
    "diameter_km": 116460,
    "mass_kg": 5.683e26,
    "orbital_period_days": 10759,
    "orbital_period_years": 29.46,
    "gravity_m_s2": 10.44,
    "composition": "Hydrogen (96%), Helium (3%)",
    "moons": [
      {
        "name": "Titan",
        "diameter_km": 5150,
        "gravity_m_s2": 1.352,
        "description": "The only moon with a thick atmosphere and liquid methane lakes.",
        "image": "assets/image/titan.png"
      }
    ],
    "image": "assets/image/saturn.gif"
  },
  {
    "name": "Uranus",
    "type": "Planet",
    "description": "An ice giant that rotates on its side, with a pale blue color.",
    "diameter_km": 50724,
    "mass_kg": 8.681e25,
    "orbital_period_days": 30687,
    "orbital_period_years": 84.02,
    "gravity_m_s2": 8.69,
    "composition": "Hydrogen (83%), Helium (15%), Methane (2%)",
    "image": "assets/image/uranus.gif"
  },
  {
    "name": "Neptune",
    "type": "Planet",
    "description": "The farthest planet, known for its deep blue color and strong winds.",
    "diameter_km": 49244,
    "mass_kg": 1.024e26,
    "orbital_period_days": 60190,
    "orbital_period_years": 164.8,
    "gravity_m_s2": 11.15,
    "composition": "Hydrogen (80%), Helium (19%), Methane (1%)",
    "moons": [
      {
        "name": "Triton",
        "diameter_km": 2707,
        "gravity_m_s2": 0.779,
        "description": "Neptune’s largest moon, with geysers that shoot nitrogen gas into space.",
        "image": "assets/image/triton.png"
      }
    ],
    "image": "assets/image/neptune.gif"
  }
];
