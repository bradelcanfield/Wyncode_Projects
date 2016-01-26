```ruby

# stores the user's choices made in game
@box_choice = []
@koopa_choice = []
@box_picked = ().to_s
@koopa_choice = []

@incorrect_input_choose_box = "\n\t\t\t\t\t\t\t🚫 Incorrect input! 🚫\n
\t\t\t\t\t\t\tPlease choose 'box 1', 'box 2', or 'box 3':\t"
@incorrect_input_choose_yes_no = "\t\t\t\t\t\t\t🚫 Incorrect input! 🚫\n
\t\t\t\t\t\t\tPlease choose 'yes' or 'no':\t"
@incorrect_input_choose_abc = "\t\t\t\t\t\t\t🚫 Incorrect input! 🚫\n
\t\t\t\t\t\t\tPlease choose 'A', 'B', or 'C':\t"
@incorrect_input_choose_ab = "\t\t\t\t\t\t\t🚫 Incorrect input! 🚫\n
\t\t\t\t\t\t\tPlease choose 'A', 'B':\t"
@win = "\n\t\t\t\t\t\t\tNice! Direct hit!\n
\t\t\t\t\t\t\tYou've defeated Bowser and have rescued 👸🏼 🍑 Princess Peach!\n
\t\t\t\t\t\t\t👸🏼 Princess Peach: \"Thank you! Thank you! You saved me!\n
      /***
                                  *    ██╗   ██╗ ██████╗ ██╗   ██╗    ██╗    ██╗██╗███╗   ██╗██╗
                                  *    ╚██╗ ██╔╝██╔═══██╗██║   ██║    ██║    ██║██║████╗  ██║██║
                                  *     ╚████╔╝ ██║   ██║██║   ██║    ██║ █╗ ██║██║██╔██╗ ██║██║
                                  *      ╚██╔╝  ██║   ██║██║   ██║    ██║███╗██║██║██║╚██╗██║╚═╝
                                  *       ██║   ╚██████╔╝╚██████╔╝    ╚███╔███╔╝██║██║ ╚████║██╗
                                  *       ╚═╝    ╚═════╝  ╚═════╝      ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═╝
                                  *
                                  */"
@lose = "\n/***
                                    *     ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗
                                    *    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗
                                    *    ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝
                                    *    ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗
                                    *    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║
                                    *     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝
                                    *
                                    */"

box = ().to_s
quitting = ().to_s
koopa_troopa = ().to_s
decision = ().to_s
bon_voyage = "\t\t\t\t\tToad: \"You are ready to continue your adventure! Go get 🐢 👹 Koopa!
\t\t\t\t\tGood luck rescuing Princess Peach! 👸🏼 🍑\""

def greeting
  puts "
                /***
                *    ██████╗  ██████╗  ██████╗ ████████╗██╗     ███████╗ ██████╗     ███████╗██╗   ██╗██████╗ ███████╗██████╗     ███╗   ███╗ █████╗ ██████╗ ██╗ ██████╗
                *    ██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝██║     ██╔════╝██╔════╝     ██╔════╝██║   ██║██╔══██╗██╔════╝██╔══██╗    ████╗ ████║██╔══██╗██╔══██╗██║██╔═══██╗
                *    ██████╔╝██║   ██║██║   ██║   ██║   ██║     █████╗  ██║  ███╗    ███████╗██║   ██║██████╔╝█████╗  ██████╔╝    ██╔████╔██║███████║██████╔╝██║██║   ██║
                *    ██╔══██╗██║   ██║██║   ██║   ██║   ██║     ██╔══╝  ██║   ██║    ╚════██║██║   ██║██╔═══╝ ██╔══╝  ██╔══██╗    ██║╚██╔╝██║██╔══██║██╔══██╗██║██║   ██║
                *    ██████╔╝╚██████╔╝╚██████╔╝   ██║   ███████╗███████╗╚██████╔╝    ███████║╚██████╔╝██║     ███████╗██║  ██║    ██║ ╚═╝ ██║██║  ██║██║  ██║██║╚██████╔╝
                *    ╚═════╝  ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝╚══════╝ ╚═════╝     ╚══════╝ ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝
                *
*/"
puts "🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄 🍄"
`afplay intro.mp3`
`afplay herewego.wav`
end

def until_box_loop(box)
  until box == "box 1" || box == "box 2" || box == "box 3"
    puts "\n"
    `afplay bump.wav`
    print @incorrect_input_choose_box
    box = gets.chomp.downcase
  end
  box_sure(box)
end

# loops until correct input
def check_answer_loop(answer, box)
  until answer == "yes" || answer == "no"
    puts "\n"
    `afplay bump.wav`
    print @incorrect_input_choose_yes_no
    answer = gets.chomp.downcase
  end
end

# checks to see if user is sure that is the box wanted
def box_sure(box)
  system('clear')
  print "\t\t\t\t\t\t\tAre you sure 📦 #{box} is the box you want to pick? Yes/No:\t"
  answer = gets.chomp.downcase
  system('clear')
  check_answer_loop(answer, box)
  if answer == "yes"
    @box_picked << box
    open_the_box_get_power_up(@box_picked)
  elsif answer == "no"
    toads_house
  end
end

# user chooses box for power up
def toads_house
  puts "\t\t\t\t\t\t\tThere are three boxes to choose from, choose carefully!\n"
  print "\t\t\t\t\t\t\tWhich box will you choose: 📦 'box 1', 📦 'box 2', or 📦 'box 3'?\t"
  box = gets.chomp.downcase
  until_box_loop(box)
end

def box_1(box)
  if @box_picked == "box 1"
    @box_choice << @box_picked   # stores user's input into array for later use
    system('clear')
    puts "\t\t\t\t\t\t\tYou got a 🔨🔨🔨🔨🔨🔨🔨 Hammer Suit!"
    puts "\n"
    `afplay powerup.mp3`
    `afplay letsgo.wav`
  end
end

def box_2(box)
  if @box_picked == "box 2"
    @box_choice << @box_picked # stores user's input into array for later use
    system('clear')
    puts "\t\t\t\t\t\t\tYou got a 🔥 🌻 Fire Flower! 🔥 🌻"
    puts "\n"
    `afplay powerup.mp3`
    `afplay letsgo.wav`
  end
end

def box_3(box)
  if @box_picked == "box 3"
    @box_choice << @box_picked # stores user's input into array for later use
    system('clear')
    puts "\t\t\t\t\t\t\tYou got a 🍂🍂🍂🍂🍂🍂🍂🍂 Super Leaf!"
    puts "\n"
    `afplay powerup.mp3`
    `afplay letsgo.wav`
  end
end

def open_the_box_get_power_up(box)
  case box
  when "box 1"
    box_1(@box_picked)
  when "box 2"
    box_2(@box_picked)
  when "box 3"
    box_3(@box_picked)
  end
end

# creates a method for quitting game
def quit(quitting, box, answer, decision)
  # loops until correct input
  until quitting == "yes" || quitting == "no"
    puts "\n"
    `afplay bump.wav`
    @incorrect_input_choose_yes_no
    quitting = gets.chomp.downcase
  end

  if quitting == "yes"
    system('clear')
    puts "\t\t\t\t\t\t\tYou have quit and are now free to go."
    exit
  elsif quitting == "no"
    puts "Ok then! Hang in there, Mario!"
  end
end

def board_one(quitting, box)
  answer = ""
  puts "\n"
  puts "\t\t\t\t\t\t\tAre you ready to conquer 🐢 👹 Koopa and rescue 👸🏼 🍑 Princess Peach?"
  print "\t\t\t\t\t\t\tYes or No:\t"
  answer = gets.chomp.downcase
  # loops until correct input
  check_answer_loop(answer, box)

case answer
when "no"
  system('clear')
  print "\t\t\t\t\t\t\tSo then would you like to quit? Yes/No:\t"
  quitting = gets.chomp.downcase
  quit(quitting, box)
  board_one(quitting, box)
when "yes"
  system('clear')
  puts "\t\t\t\t\t\t\tHave no fear! Mario is here!"
  puts "\n"
  `afplay letsgo.wav`
  puts "\t\t\t\t\t\t\t💢💢  Let's use that power up! 💢💢"
  `afplay powerup.mp3`
end
end

def lava(box, quitting)
  lava = ""
  puts "\t\t\t\t\t\t\tIt's time to rescue 👸🏼 🍑 Peach!"
  puts "\n"
  puts "\t\t\t\t\t\t\tUh oh, 🌋 🔥 lava everywhere! Do you 'jump over' or 'jump in'?"
  puts "\t\t\t\t\t\t\t🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥"
  print "\t\t\t\t\t\t\tEnter 'jump over' or 'jump in':\t"
  jump = gets.chomp.downcase
  # loops until correct input
  until jump == "jump in" || jump == "jump over"
    puts "\n"
    `afplay bump.wav`
    puts "\t\t\t\t\t\t\t🚫 Incorrect input! 🚫"
    print "\t\t\t\t\t\t\tPlease choose 'jump over' or 'jump in':\t"
    jump = gets.chomp.downcase
  end

  if jump == "jump over"
    system('clear')
    puts "\t\t\t\t\t\t\t😅 Phew! That was close but you made it over!"
    puts "\n"
    `afplay bestcoin.wav`
    `afplay letsgo.wav`
  elsif jump == "jump in"
    system('clear')
    puts "\t\t\t\t\t\t\t😵 You died! 👎"
    puts "\n"
    puts @lose
    `afplay dead.mp3`
    # takes user back to beginning of game to play again
    toads_house(box)
    board_one(quitting)
    lava(box, quitting)
  end
end

# users next choice
def turtle(koopa_troopa)
  puts "\t\t\t\t\t\t\tUh oh, there's a 🐢  Koopa Troopa!"
  `afplay koopa.mp3`
  puts "\n"
  puts "\t\t\t\t\t\t\tDo you:"
  puts "\t\t\t\t\t\t\tA) jump on him and keep it moving?"
  puts "\t\t\t\t\t\t\tB) jump on him and take his shell with you?"
  puts "\t\t\t\t\t\t\tC) jump over him and keep it moving?"
  puts "\n"
  print "\t\t\t\t\t\t\tChoose 'A', 'B', or 'C':\t"
  koopa_troopa = gets.chomp.downcase
# loops until correct input
  until koopa_troopa == "a" || koopa_troopa == "b" || koopa_troopa == "c"
    puts "\n"
    `afplay bump.wav`
    print @incorrect_input_choose_abc
    koopa_troopa = gets.chomp.downcase
  end

  case koopa_troopa
  when "a"
    # stores user's choice into array for later use
    @koopa_choice << "a"
    system('clear')
    puts "\t\t\t\t\t\t\t👏 Nice job, Mario! You clobbered that little sucker!"
    puts "\n"
    `afplay bestcoin.wav`
    `afplay letsgo.wav`

  when "b"
    # stores user's choice into array for later use
    @koopa_choice << "b"
    system('clear')
    puts "\t\t\t\t\t\t\t👏 Nice job, Mario! You clobbered that little sucker and kept his shell as a POTENTIAL WEAPON!"
    puts "\n"
    `afplay bestcoin.wav`
    `afplay letsgo.wav`

  when "c"
    # stores user's choice into array for later use
    @koopa_choice << "c"
    system('clear')
    puts "\t\t\t\t\t\t\t😅 Phew! That was a close one, Mario!"
    puts "\n"
    `afplay bestcoin.wav`
    `afplay letsgo.wav`

  end
end

def fight_flight(decision, quitting)
  puts "\t\t\t\t\t\t\tBUM! BUM! BUM! 😱"
  puts "\n"
  puts "\t\t\t\t\t\t\tHere is Bowser, King of the Koopas and he looks ANGRY! 🐢 👹"
  `afplay koopa.mp3`
  puts "\n"
  puts "\t\t\t\t\t\t\tYou are going to have to defeat him in order to save Princess Peach!👸🏼 🍑"
  puts "\n"
  puts "\t\t\t\t\t\t\tWhat are you going to do, Mario?"
  puts "\n"
  puts "\t\t\t\t\t\t\tWill you:"
  puts "\t\t\t\t\t\t\tA) 👊 Fight him?"
  puts "\t\t\t\t\t\t\tB) 👶 Be a coward and quit?"
  puts "\n"

  print "\t\t\t\t\t\t\tChoose A or B:\t"
  decision = gets.chomp.downcase
# loops until correct input
  until decision == "a" || decision == "b"
    puts "\n"
    `afplay bump.wav`
    @incorrect_input_choose_ab
    decision = gets.chomp.downcase
  end
  puts "\n"
  `afplay bump.wav`
  @incorrect_input_choose_ab
  decision = gets.chomp.downcase

  case decision
  when "a"
    system('clear')
    puts "\t\t\t\t\t\t\t👊 Hell yeah! Beat that ass, Mario!"
    puts "\n"
    `afplay bestcoin.wav`
    `afplay letsgo.wav`
# option to quit
  when "b"
    system('clear')
    print "\t\t\t\t\t\t\tSo then would you like to quit? Yes/No:\t"
    quitting = gets.chomp.downcase
    quit(quitting, box, answer, decision)
    fight_flight(answer, quitting)
  end
end

def fight_choice
  options = {
    "box 1" => {
      "a" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your Hammer Suit and throw a 🔨 at him?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?"
      ],
      "b" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your Hammer Suit and throw a 🔨 at him?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?",
        "\t\t\t\t\t\t\tD) Throw the Koopa Troopa shell at him"
      ],
      "c" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your Hammer Suit and throw a 🔨 at him?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?"
      ]
    },
    "box 2" => {
      "a" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your 🔥 🌻 Fire Flower and throw a 🔥 🔴 Fireball at him?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?"
      ],
      "b" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your 🔥 🌻 Fire Flower and throw a 🔥 🔴 Fireball at him?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?",
        "\t\t\t\t\t\t\tD) Throw the Koopa Troopa shell at him"
      ],
      "c" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your 🔥 🌻 Fire Flower and throw a 🔥 🔴 Fireball at him?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?"
      ]
    },
    "box 3" => {
      "a" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your 🍂🍂🍂🍂🍂🍂 Super Leaf and whack him with your Racoon Tail?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?"
      ],
      "b" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your 🍂🍂🍂🍂🍂🍂 Super Leaf and whack him with your Racoon Tail?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?",
        "\t\t\t\t\t\t\tD) Throw the Koopa Troopa shell at him"
      ],
      "c" => [
        "\t\t\t\t\t\t\tA) Jump on him?",
        "\t\t\t\t\t\t\tB) Use your 🍂🍂🍂🍂🍂🍂 Super Leaf and whack him with your Racoon Tail?",
        "\t\t\t\t\t\t\tC) Take a moment and think about it?"
      ]
    }
  }
  puts "\t\t\t\t\t\t\tKoopa is fuming! It looks like he's about to make a move!"
  puts "\n"
  puts "\t\t\t\t\t\t\tThink fast, Mario!"
  puts "\t\t\t\t\t\t\tWhat will you do?"
  puts "\n"
  puts "\t\t\t\t\t\t\tWill you:"
  # calls the specific options based on the choices made by user
  puts options[@box_choice.first][@koopa_choice.first]
  print "\t\t\t\t\t\t\t"
  users_choice = gets.chomp.downcase
# loops until correct input
  until users_choice == "a" || users_choice == "b" || users_choice == "c" || users_choice == "d"
    puts "\n"
    `afplay bump.wav`
    puts "\t\t\t\t\t\t\t🚫 Incorrect input!🚫"
    print "\t\t\t\t\t\t\tPlease choose: #{options[@box_choice.first][@koopa_choice.first]}:\t"
    users_choice = gets.chomp.downcase
  end

  case users_choice
  when "a"
    if @koopa_choice.first == "b"
      puts "\t\t\t\t\t\t\t😱  Oh, no! You should have thrown the Koopa Troopa shell!"
      puts "\t\t\t\t\t\t\tMid jump, the Koopa Troopa re-emerged from it's shell and shrunk you out of your power up!"
      puts "\t\t\t\t\t\t\tBowser uses the oportunity to jump on and destroy you!"
      puts @lose
      `afplay gameover.mp3`
    else
      puts @win
      `afplay grassland1.mp3`
    end

  when "b"
    if @koopa_choice.first == "b"
      puts "\t\t\t\t\t\t\t😱  Oh, no! You should have thrown the Koopa Troopa shell!"
      puts "\t\t\t\t\t\t\tThe Koopa Troopa re-emerged from it's shell and shrunk you out of your power up!"
      puts "\t\t\t\t\t\t\tBowser uses the oportunity to jump on and destroy you!"
      puts @lose
      `afplay gameover.mp3`
    else
      puts @win
      `afplay grassland1.mp3`
    end

  when "c"
    puts "\t\t\t\t\t\t\t👎  Bad move!"
    puts "\t\t\t\t\t\t\tYou hesitated so Bowser jumped on you and clobbered you!"
    puts @lose
    `afplay gameover.mp3`

  when "d"
    puts @win
`afplay grassland1.mp3`
end
end

# calling the methods
greeting
toads_house
puts bon_voyage
board_one(quitting, box)
lava(box, quitting)
turtle(koopa_troopa)
fight_flight(decision, quitting)
fight_choice
```
