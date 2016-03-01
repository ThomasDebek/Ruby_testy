puts "Instrukcje Wejscia"

# kiedy cos pobieramy przez gets - to np. w irb
# przechodzi nam do nastempnej linii z tekst\n
# zeby to usunąc dajemy chomp

#np. imie = gets
# p imie
# wyswietli nam np Tomek\n
# nie chcemy tego n i go usunmy
# p imie.chomp    - tyle

# puts czyli daj

# gets - czyli wes


class Pisz
  def powitanie
    puts "Jak masz na imie ? >>  "
    @imie = gets.chomp
    system "cls"            # To OZNACZA WYCZYSC MONITOR

  end
  def wypisz
    puts "Witamy na naszej stronie #{@imie.capitalize}"
  end
end

p = Pisz.new
#puts p.powitanie
#puts p.wypisz




























