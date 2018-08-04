class MegaGreeter
  attr_accessor :names

  # create the object
  def initialize(names = "world")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "...."
    elsif @names.respond_to?("each")
      # @names is a list, so iterate it
      @names.each do |name|
        puts "hello #{name}!"
      end
    else
      puts "hello #{@names}"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      #join the list elements with commas
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Comes back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye

end


