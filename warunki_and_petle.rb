
class Petle
 def swiec
   swiatło = "zolted"
   if swiatło == "czerwone"
     puts "Stop"
   elsif swiatło == "zielone"
     puts "Jedz"
   elsif swiatło == "zolte"
     puts "Czekaj"
   else
     puts "zepsute switala - uwazaj"
   end
 end
end

a = Petle.new
puts a.swiec


class Szkola
 def szkol
   ocena = 4
   case ocena
     when 1,2
       puts "kiepska ocena"
     when 3,4
       puts "srednia ocena"
     when 5,6
       puts "swietna ocena"
     else
       puts "ocena nieznana"
   end
 end

  def szokl2
    ocena = 6
    if ocena == 1 or ocena ==2
      puts "kiepska"
    elsif ocena == 3 or ocena == 4
      puts "srednia"
    elsif ocena == 5 or ocena == 6
      puts "bardzo dobra"
    else
      puts "ocena nie znana"
    end
  end



end

b = Szkola.new
puts b.szkol
puts b.szokl2

puts "Petla For"


class Petllle
  def cos
    puts "witaj ! \n" *5   #\n    - przjscie do nowej linni
  end

  def cos2
    x = 0
    -for x in (1..10)
       print "dupa "
    end
  end

  # tu w irb przeliteratuje wszytko
  def cos3
    for imie in ["ala", "ewa", "ola"]
      puts "Witaj #{imie.capitalize} w moim programie"
    end
  end


end

c = Petllle.new
puts c.cos
puts c.cos2
puts c.cos3






