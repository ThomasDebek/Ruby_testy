# To co wyrużnia nas z pracą z plikami Windows and Unix jest separator

# puts require '/Users/Tomasz/Applicationss_Rails/Strefakursow2015/Api/Ruby/Moduly.rb'  # Dla systemów UNIX
# puts require '/Users/Tomasz/Applicationss_Rails/Strefakursow2015/Api/Ruby/Moduly.rb'  # Dla Windows


puts require '/Users/Tomasz/Applicationss_Rails/Strefakursow2015/Api/Ruby/Moduly.rb'


#puts File.join()

p File.absolute_path(__FILE__)     # Ta metoda wyswietli nam katalog biezący



puts " kolejna "

p File.dirname(__FILE__)          #

puts "kolejne"

p File.expand_path(".")     # Ruby odpowiada pełną ścieżką dostępu do katalogu

puts "inna ścieżka dostępu"

p File.expand_path("../..")