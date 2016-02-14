
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

puts c.cos3


class Tabliczka_monzenia
 def cos
   x = 0
   y = 0

   for x in (1..10)
     for y in (1..10)
       z = x * y
       if z <= 9
         print "|  #{z} |"
       else
         print "| #{z} |"
       end
     end
     print x
   end
 end
end

ta = Tabliczka_monzenia.new
puts ta.cos


# PETLE WHILE ORAZ UNTIL
puts "PETEA WHILE ORAZ UNTIL"

class Petla_While_Until
  def test
    x = 0
    puts "ok- warunek spelniony" if x < 3
    x+=1
    puts "ok" if x < 3
  end

  # Zamiast tej petli mozemy zmienic na inna - czyli dopuki warunek nie jest spelniony
  puts "test_2"
  def test_2
    x = 0
    puts x
    puts x +=1 while x < 3
  end

  def test_3
    x = 0
    while x < 10
      x +=1
      puts "Witaj uczestniku nr: " +x.to_s
    end
  end

  def test_4
    x = 0
    until x >= 10
      x += 1
      puts "Witaj nowy uczestniku; " + x.to_s
    end
  end
end

cP = Petla_While_Until.new
puts cP.test
puts cP.test_2
puts cP.test_3
puts cP.test_4


puts " "
puts " PETLA LOOP DO   -  bardzo ciekawa betla, uzywamy w niej slowa BREAK"

class Petla_loop_do
  def test
    x = 0
    loop do
      break if x > 10 # INNYMI SLOWY PRZERWIJ AZ DOJDZIESZ DO 10 - JEZELI TEGO NIE DAMY - TO BEDZIE NISKĄCZON PETLA
      x += 1
      puts "Witaj nowy uczestniu petli loop"
    end
  end

  def test_2
    x = 0
    loop do
      break if x > 10
      x += 1
      next if x == 5    # W tym momęcie pomija nam element o numerze 5
      puts "Ala ma kota " + x.to_s
    end
  end
end

pl = Petla_loop_do.new
puts pl.test
puts pl.test_2


puts " "
puts "ITERATORY  - Pozwalają na sekwencyjny dostep do obiektu"
class Iteratory
  def test
    x = 0
    while x < 3
      puts "Nasz Iterator "
      x += 1
    end
  end
  def test_2
    4.times do
      puts "Mniej pracy"
    end
  end

  def test_3
    5.upto(7) {puts "Yes!"}   # Tu nam wyswietli od zadane wartosci czyli 5 do ządanej czyli do 7
  end

  def test_4     # z tej metody liczy nam od 2ch w górę czyli do 4   - ZAJEBISTE TO JEST
    2.upto(4) do |numeruj|
      puts "Kolejne liczby: " + numeruj.to_s
    end
  end

  def test_5
    imiona = ["ewa", "ola", "ala", "jan"]
    imiona.each do |osoba|
      puts osoba
    end
  end
end

it = Iteratory.new
puts it.test
puts it.test_2
puts it.test_3
puts it.test_4
puts it.test_5


puts " "
puts "BLOKI KODU"
class Bloki_kodu
  def test
    (1..5).each do |x|
       puts "aaa " + x.to_s
    end
  end

  def test_2
    ["ala", "ewa", "ola"].each {|imie| puts imie}
  end

  def test_3
    imiona = ["ala", "ewa", "ola"]
    imiona.each do |imie|
      puts "Witaj: #{imie.capitalize} w tescie Ruby !"
    end
  end
end

bl = Bloki_kodu.new
puts bl.test
puts bl.test_2
puts bl.test_3


puts " "
puts " BLOKI KODU - ITERATORY"
puts " "

class Bloki_kodu_metody
  def test    # Wyszukajmy elementy z pewnego zakresu danych
    p (1..10).detect {|szukana| szukana == 5}
  end
  def test_2
    p (1..10).detect {|szukana| szukana  > 5}
  end

  def test_3    # Wyszukajmy zadane elementy za pomocą metody find_all
    p (1..10).find_all {|szukana| szukana >  5}
  end

  def test_4    # Wyszukajmy zadane elementy za pomocą metody any - czyli czy spelnia nasz wrunek
    p (1..10).find_all {|szukana| szukana > 3}
  end
end

bm = Bloki_kodu_metody.new
puts bm.test
puts " "
puts bm.test_2
puts " "
print bm.test_3
puts " "
puts bm.test_4
