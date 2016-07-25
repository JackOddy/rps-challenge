class Weapons
  CHOICES = {rock: 0, paper: 1, scissors: 2, lizard: 3, spock: 4}.freeze

  def choose(weapon)
    CHOICES[weapon.to_sym]
  end
end
