class Player
    attr_accessor :name, :blood, :mana
    def initialize(name)
    	@name = name
    	@blood = 100
    	@mana = 40
    end

    def result
    	puts "#{@name} Blood: #{@blood} Mana: #{@mana}"
    end

    def set_name name
        @name = name
    end 

    def get_name
    	@name
    end

    def set_blood blood
    	@blood = blood
    end

    def get_blood
    	@blood
    end

    def set_mana mana
    	@mana = mana
    end

    def get_mana
    	@mana
    end

    def attack_player1
    	@mana -= 10
    end

    def attack_player2
    	@blood -= 10
    end

    def deffend_player1
    	@blood -=25
    end

    def deffend_player2
    	@blood -=25
    end

end

puts'
# ===================================== #
# Welcome to the Battle Arena           #
# ------------------------------------- #
# Description:                          #
# 1 type "new" to create a character    #
# 2. type "start" to begin the fight    #
# ===================================== #
'

jwb = gets.chomp
if jwb.eql? "new"
	puts "Put hero name"
	name = gets.chomp
	player = Player.new(name)


puts "Choose position attack or defend"
posisi1 = gets.chomp
puts "Current hero: "
puts player.name
puts "Position"
puts posisi1 + String('er')
end

puts'
# ===================================== #
# Now Hero 2                            #
# Type "ok"								#
# ------------------------------------- #
'
jwb = gets.chomp
if jwb.eql? "ok"
	puts "Put hero name"
	name = gets.chomp
	player2 = Player.new(name)


puts "Choose position attack or defend"
posisi2 = gets.chomp
puts "Current hero"
puts player2.name
puts "Position"
puts posisi2 + String('er')
end

puts'
# ===================================== #
# Welcome to the Battle Arena           #
# ------------------------------------- #
# Type "start" now                      #
# ===================================== #
'
jwb = gets.chomp
if jwb.eql? "start"
	while (((player.mana >0 && player.blood > 0)|| (player2.mana > 0 && player2.blood > 0)) && 
		((player.mana > 0 && player2.mana > 0) || (player.blood >0 && player2.blood > 0)))
		
	
puts '
# ===================================== #
# Welcome to the Battle Arena           #
# ------------------------------------- #
# ===================================== #
'
if posisi1.eql? "attack"
	player.attack_player1
	end

if posisi1.eql? "defend"
	player2.attack_player2
	end

if posisi2.eql? "attack"
	player.deffend_player1
	end

if posisi2.eql? "defend"
	player2.deffend_player2
	end

puts player.result
puts player2.result

end

else
puts "try again"
end