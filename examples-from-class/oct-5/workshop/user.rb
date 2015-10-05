# an ORM is designed to create an object
# who's methods convert into sql statements and run them into postgres

# class definition of User object
class User
  # takes one attribute id and returns
  def self.find(id)
    # (class method) use -c flag for running commands directly into postgres
  end

  # takes in a hash and converts that to where clause
  def where(attributes)
    # (class method) think about how to loop through hashes
    # try looping thru a test ruby file or within irb
  end

  def all
    # (class method) returns all users in the database as objects inside of an array
  end

  def last
    # (class method) returns an object containing the last user in the database
  end

  def first
    # (class method) returns an object containing the first user in the database
  end

  def create
    # (class method) takes a Hash of user attributes and creates a new user
  end

  def destroy_all
    # (class method) destroys every record in the users table
  end

  def save
    # (instance method) saves an instance of User inside the database.
  end

  def destroy
    # (instance method) destroys a particular record.
  end
end