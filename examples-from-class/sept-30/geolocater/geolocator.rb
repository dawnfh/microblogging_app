# requires the gem named geolocater
require 'geolocater'

# invokes a class method geolocate_ip and passes the method
#   a string value of "64.119.207.255"
record = Geolocater.geolocate_ip("64.119.207.255")

# displays the record
puts record