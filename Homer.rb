class Homer
  
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10 #full
    @stuffInIntestine = 0
    
    puts @name + ' is here!'
    
  end
  
  def feed 
    puts 'You feed him'
    @stuffInBelly = 10
    passageOfTime
    
  end
  
  def walk 
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end
  
  def putToBed
    puts 'You command Marge to put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' has epic snoring...'
      end
    end
    if @asleep 
      @asleep = false
      puts @name + ' wakes up and immediately eats a donut'
    end
  end
  
  def watch
    puts 'You watch him tell a joke'
    puts 'He asks the operator the number for 911'
    passageOfTime
  end
  
  def nap
    puts 'You tell ' + @name + ' to get some rest'
    @asleep = true
    puts "he dozes off for a bit"
    passageOfTime
    if @asleep
      @asleep = false
      puts 'Wakes suddenly'
    end
  end
  
  private
  
  #private means that these methods defined here are methods internal to the object. I can feed Homer but not ask him if he's hungry
  
  def hungry?
    #Method names that end why "?" usually only happen if the method returns true or false
    @stuffInBelly <=2 
  end
  
  def poopy?
    @stuffInIntestine >= 8
  end
  
  def passageOfTime
    if @stuffInBelly > 0
      #Moving food from belly to intestine
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else #Homer is starving
      if @asleep 
        @asleep = false
        puts 'He wakes up right away'
      end
      puts @name + ' is super hungry. So hungry, he escaped from you to hang out at Moe\'s and eat peanuts'
      exit 
    end
    
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'He had an accident!'
    end
    
    if hungry?
      if @asleep 
        @asleep = false
        puts 'He wakes up!'
      end
      puts @name + '\'s stomach grumbles'
    end
    
    if poopy?
      if @asleep 
        @asleep = false
        puts "He's up!"
      end
      puts @name + ' needs to use the restroom'
    end
  end

end

babysit = Homer.new 'Homer'
babysit.feed
babysit.watch
babysit.walk
babysit.putToBed
babysit.nap
babysit.putToBed    
babysit.putToBed    
babysit.putToBed    
babysit.putToBed    
    
    