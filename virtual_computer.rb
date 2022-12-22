class Computer
  @@users = {}
  @@time = Time.now
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    @files[filename] = @@time
    puts "#{filename} was created at #{@@time} by #{@username}."
  end

  def Computer.get_users # class method
    return @@users
  end

  def update_file(filename)
    if @files[filename].nil?
      puts "#{filename} doesn't exist!"
    else
      @files[filename] = @@time
      puts "#{filename} was updated at #{@@time} by #{@username}."
      end    
  end

  def delete_file(filename)
    if @files[filename].nil?
      puts "#{filename} doesn't exist!"
    else
      @files.delete(filename)
      puts "#{filename} has been deleted."
    end
  end

  def see_files
    puts @files
  end

  def number_of_files
    puts @files.length
  end
end

my_computer = Computer.new("Bob", 12345)
your_computer = Computer.new("Jill", 6789)
my_computer.create("work.xlsm")
my_computer.create("product.xlsm")
my_computer.create("new_file.xlsm")
my_computer.update_file("work.xlsm")
your_computer.update_file("lookup.xlsm")
puts Computer.get_users
my_computer.see_files
my_computer.number_of_files
