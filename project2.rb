```ruby
class People
  attr_accessor  :party, :name
  def initialize(name, party)
    @name = name
    @party = party
  end

  def get_name
    @name
  end
end

class Politician < People
end

class Voter < People
end

class VoterSim
  attr_accessor :politicians, :voters
  def initialize
    @politicians = []
    @voters = []
  end

  def main_screen
    puts "Main Menu"
    puts "What would you like to do?"
    print "(C)reate, (L)ist, (U)pdate, or (D)elete :\t"
    action = gets.chomp.capitalize
    until action == "C" || action == "L" || action == "U" || action == "D"
      # system('clear')
      puts "Incorrect Input."
      puts "Please enter (C)reate, (L)ist, (U)pdate, or (D)elete"
      print "C, L, U, or D:\t"
      action = gets.chomp.capitalize
    end
    case action
    when "C"
      create(action)
      # create_politician_or_voter(create)
    when "L"
      list(action)
    when "U"
      update(action)
    when "D"
      delete(action)
    end
  end

  def create(action)
    if action == "C"
      puts "What would you like to create?"
      puts "(P)olitician"
      print "(V)oter :\t"
      create = gets.chomp.capitalize
      until create == "P" || create == "V"
        puts "Incorrect input."
        puts "Please enter (P)olitician or (V)oter"
        prints "P or V:\t"
        create = gets.chomp.capitalize
      end
      create_politician_or_voter(create)
    end
  end

  def create_politician_or_voter(create)
    if create == "P"
      print "What is the politician's name:\t"
      name = gets.chomp.capitalize #fix to where stupid and evil users cannot break
      puts "In which political party is this politician?"
      print "(R)epublican or (D)emocrat:"
      party = gets.chomp.capitalize
      until party == "R" || party == "D"
        #system('clear')
        puts "Incorrect input."
        puts "Please enter (R)epublican or (D)emocrat"
        print "R or D:\t"
        party = gets.chomp.capitalize
      end
      politicians << Politician.new(name, party)
      puts "Politician created."
      list(@politicians)
      main_screen
    elsif create == "V"
      print "What is the voter's name:\t"
      name = gets.chomp.capitalize # fix to where stupid and evil users cannot break
      puts "In which political party is this voter?"
      puts "What political view would you like to list this voter under?"
      print "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral:"
      party = gets.chomp.capitalize
      until party == "L" || party == "C" || party == "T" || party == "S" || party == "N"
        #system('clear')
        puts "Incorrect input."
        puts "Please enter (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
        print "L, C, T, S or N:\t"
        party = gets.chomp.capitalize
      end
      voters << Voter.new(name, party)
      puts "Voter created."
      list(@voters)
      main_screen
    end
  end

  def list(action)
    puts "Politicians, #{politicians}"
    puts "Voter, #{voters}"
    # puts "\n"
    # puts "Would you like to go back to the main menu?"
    # puts "Yes or no?"
    # yes_or_no = gets.chomp.upcase
    # until yes_or_no == "YES" || yes_or_no =="NO"
    #   #system('clear')
    #   puts "Incorrect input."
    #   print "Please enter YES or NO:\t"
    #   yes_or_no = gets.chomp.upcase   # finish adding new name or if "no" then something else
    # end
    # if yes_or_no == "YES"
    #   main_screen
    # elsif yes_or_no == "NO"
    #   exit
    # end
  end

  def update(action)
    if action == "U"
      puts "What is the name of the person you would like to update?"
      update = gets.chomp.capitalize
      # until update == @politicians[] || update == @voters[]
        #system('clear')
        # print "Please enter a valid politician or voter name:\t"
        # puts "What is the name of the person you would like to update?"
        # update = gets.chomp.capitalize
      # end
      if update == @politicians.include?(update)
        update_politician_name
      elsif update == voters.select {|name| name.match(update)}
        update_voter_name
      else
        puts "Please enter a valid politician or voter name:\t"
        update(action)
      end
    end
  end

  def update_politician_name
    if update == @politician_name
      puts "New name?"
      print "yes/no:\t"
      yes_or_no = gets.chomp.upcase
      until yes_or_no == "YES" || yes_or_no =="NO"
        #system('clear')
        puts "Incorrect input."
        print "Please enter YES or NO:\t"
        yes_or_no = gets.chomp.upcase   # finish adding new name or if "no" then something else
      end
      verify_yes_or_no_while_updating_politician_name(yes_or_no, update)
    end
  end

  def verify_yes_or_no_while_updating_politician_name(yes_or_no, update)
    if yes_or_no == "YES"
      politicians.shift(name)
      print "Please enter the new name:\t"
      name = gets.chomp.capitalize   # fix to where stupid and evil users cannot break
      politicians << Poltician.new(name)
    elsif yes_or_no == "NO"
      puts "New party?"
      print "yes/no:\t"
      yes_or_no = gets.chomp.upcase
      until yes_or_no == "YES" || yes_or_no == "NO"
        #system('clear')
        puts "Incorrect input."
        print "Please enter YES or NO:\t"
        yes_or_no = gets.chomp.upcase   # finish adding new name or if "no" then something else
      end
      update_politician_party(yes_or_no, update)
    end
  end

  def update_politician_party(yes_or_no, update)
    if yes_or_no == "YES"
      politicians.shift(party)
      puts "In which political party is this politician?"
      print "(R)epublican or (D)emocrat:"
      party = gets.chomp.capitalize
      until party == "R" || party == "D"
        #system('clear')
        puts "Incorrect input."
        puts "Please enter (R)epublican or (D)emocrat"
        print "R or D:\t"
        party ==gets.chomp.capitalize
      end
      politicians << Politician.new(party)
    elsif yes_or_no == "NO"
      main_screen
    end
  end

  def update_voter_name
    if update == @voters
      puts "New name?"
      print "yes/no:\t"
      yes_or_no = gets.chomp.upcase
      until yes_or_no == "YES" || yes_or_no == "NO"
        #system('clear')
        puts "Incorrect input."
        print "Please enter YES or NO:\t"
        yes_or_no = gets.chomp.upcase   # finish adding new name or if "no" then something else
      end
      verify_yes_or_no_while_updating_voter_name(yes_or_no)
    end
  end

  def verify_yes_or_no_while_updating_voter_name(yes_or_no)
    if yes_or_no == "YES"
      print "Please enter the new name:\t"
      name = gets.chomp.capitalize   # fix to where stupid and evil users cannot break
      voters << Voter.new(name)
    elsif yes_or_no == "NO"
      puts "New party?"
      print "yes/no:\t"
      yes_or_no = gets.chomp.upcase
      until yes_or_no == "YES" || yes_or_no == "NO"
        #system('clear')
        puts "Incorrect input."
        print "Please enter YES or NO:\t"
        yes_or_no = gets.chomp.upcase   # finish adding new name or if "no" then something else
      end
      update_voter_party(yes_or_no)
    end
  end

  def update_voter_party(yes_or_no)
    if yes_or_no == "YES"
      puts "What political view would you like to list this voter under?"
      print "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral:"
      party = gets.chomp.capitalize
      until party == "L" || party == "C" || party == "T" || party == "S" || party == "N"
        #system('clear')
        puts "Incorrect input."
        puts "Please enter (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
        print "L, C, T, S or N:\t"
        party ==gets.chomp.capitalize
      end
      voters << Voter.new(party)
    elsif yes_or_no == "NO"
      main_screen
    end
  end

  def delete(action)
    puts "\n"
    list(action)
    puts "\n"
    puts "Who would you like to delete?"
    delete_this = gets.chomp.capitalize
    @politicians.each do |x|
      if x.get_name == delete_this
        # ask if they want to
        @politicians.delete_if {|k| k.get_name == delete_this}
      end
    end
    # until @politicians.include?(delete_this) || @voters.include?(delete_this)
    #   puts"\n"
    #   puts "Incorrect input."
    #   puts "\n"
    #   list(action)
    #   puts "\n"
    #   puts "Who would you like to delete?"
    #   print "Please enter a valid name:\t"
    #   delete_this = gets.chomp.capitalize
    # end
    if @politicians.include?(delete_this) || @voters.include?(delete_this)
      puts "Are you sure?"
      print "yes/no:\t"
      yes_or_no = gets.chomp.upcase
      until yes_or_no == "YES" || yes_or_no == "NO"
        #system('clear')
        puts "Incorrect input."
        print "Please enter YES or NO:\t"
        yes_or_no = gets.chomp.upcase
      end
      if yes_or_no == "YES" && @politicians.include?(delete_this)
        @politicians.shift(delete_this)
        puts "This politician has been deleted."
        "\n"
        main_screen
      elsif yes_or_no == "YES" && @voters.include?(delete_this)
        @voters.shift(delete_this)
        puts "This voter has been deleted."
        "\n"
        main_screen
      else
        main_screen
      end
    end
  end

end


run_sim = VoterSim.new
run_sim.main_screen()

```
