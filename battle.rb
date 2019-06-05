class Warrior
    attr_accessor :name, :hp, :atk, :magic, :status
  def initialize(name)
  @name = name
  self.hp = 100
  self.mp = 10
  self.atk = 30
  self.magic = 5
  self.status = 'alive'
end

  def attack(target)
  target.hp -= self.atk
  puts "#{@name} attacked #{target.name}"
  if target.hp < 1
     target.status = 'fallen'
   puts "#{target.name} has fallen!"
end
end
end

 class Mage
 attr_accessor :name, :hp, :atk, :magic, :status
 def initialize(name)
   @name = name
   self.hp = 60
   self.mp = 100
   self.atk = 10
   self.magic = 40
   self.status = 'alive'
 end

  def cast_spell(target)
  target.hp -= self.magic
  puts "#{name} casted Firaga on #{target.name}"
  if target.hp < 1
  target.status = 'fallen'
  puts "#{target.name} has burned!"
end
end
end

def take_turn(player, target)
 if player.class == Warrior
  puts "select an action\n1 -Attack\n2 - pass\n3 - quit"
    answer = gets.chomp.to_i
  if answer == 1
    puts "#{player.name} attacked"
    player.attack(t)
  elsif answer == 2
    puts "skipped turn..."
  elseif answer == 3
  puts "exiting game"
    $battle_time = false
  else
  puts "invalid input"
  end
else
   puts "select an action\n1 -Attack\n2 - pass\n3 - quit"
     answer = gets.chomp.to_i
   if answer == 1
     puts "#{player.name} casted magic!"
     player.attack(t)
   elsif answer == 2
     puts "skipped turn..."
   elseif answer == 3
   puts "exiting game"
     $battle_time = false
   else
   puts "invalid input"
   end
 end
end

 def start_battle(p1, p2)
 puts "battle begins!"
 $battle_time = true
 turn_count = 0
 while $battle_time  # truthy checking for presiants
 if p1.status == "fallen" || p2.status == "fallen"
 puts "the battle is over"
 break
 end
  turn_count += 1
  if turn_count % 2 == 0
  take_turn(p2, p1)
else

    take_turn(p2, p1)
end
end
end
