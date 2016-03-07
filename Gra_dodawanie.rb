
#Plan gry
# 0. Szkielet klasy
# 1. Wyczysc ekran
# 2. Powitac gracza i wyswietlic podpowiedzi
# 3. Zainicjować zmienne
# 4. Wylosowac pierwszą liczbę
# 5. Wylosować drugą liczbę
# 6. Wyswietlic wylosowane liczby uzytkownikowi
# 7. Obliczyć sumę wylosowanych liczb (pierwsza + druga)
# 8. Pobrać wynik od uzytkownika
# 9. Porównać wynik od uzytkownika z wynikiem wyliczenia
# 10. Wyswietlic komunikat o: sukcesie , porażce
# 11. Zaliczyc pnkt. uzytkownikowi (+ za dobrą odp,  - za zła odp.)
# 12. Powtórzyc losowanie
# 13. Zakączyc gre, jezeli uytkownik wpisze słowo koniec
# 14. Jeżeli gra została zakączona, wyświetlić informacje o zdobytej punktacji




class GraDodawanie
  def initialize
    system "cls"   # czyli wyczyscmy ekran
    @odpowiedz = ""
    @punktacja = 0
    gra
  end

  def gra
    powitanie
    until @odpowiedz == "koniec"
      @a = rand(1..10)
      @b = rand(11)
      @wynik = @a + @b
      @odpowiedz = gets.chomp

      puts ""
      print @imie + ", ile to jest #{@a} + #{@b} = ? "
      puts ""
      @odpowiedz = gets.chomp
      puts "Twoja odpowiedz to: #{@odpowiedz}"

      if @odpowiedz == @wynik.to_s
        puts "dobra odpowiedz :)"
        @punktacja +=1
      elsif
        @odpowiedz == "koniec"
          koniec
      else
        puts "To nie jest dobra odpowiedz"
        @punktacja -=1
      end


    end
  end

  def powitanie
    print "Jak masz na imie? "
    @imie = gets.chomp
    @imie = @imie.capitalize
    puts "********************************"
    puts "Witaj #{@imie} w grze dodawanie".center(60)
    puts "********************************"
    puts "Podpowiedz: jeśli chcesz zakączyć gre, wpisz słowo koniec"
  end

  def koniec
    puts "Do zobaczenia " + @imie
    puts "Twoj wynik to #{@punktacja} pkt"
    puts "nacisnij [enter]"
    gets
  end
end

graj = GraDodawanie.new
