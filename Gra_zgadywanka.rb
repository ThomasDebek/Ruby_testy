# Gra zgadywanka
# 1. Wyczyszczenie ekranu
# 2. Powitanie gracza
# 3. Wyświetlamy podpowiedzi
# 4. Zainicjować zmienne
# 5. Uruchamiamy grę
# 6. Wylosowac przedział
# 7. Wylosowac liczbę
# 8. Wylosowac wylosowany przedział uzytkownikowi
# 9. Pobrać wynik od uzytkownika
# 10. Porównac pobrany wynik  z wynikiem gracza
# 11. Wyswietlic komunikat o:
# - sukcesie
# - porażce
# 12. Zliczyc kolejne kroki odgadywania
# 13. Zakączyc grę jezeli uzytkownik wpisze słowo koniec
# 14. Zakączyć grę i wyswietlic informację o ilosci kroków


class GraZgadywanka
  def initialize
    system 'cls'
    @odpowiedz = ""
    @punktacja = 0
    gra
  end

  def gra
    powitanie
    @przedzial = rand(1..1000)
    @wylosowana = rand(@przedzial)
    puts "--------------------------------------------"
    print "odgadnij liczbe z przedziału <<< od 0 do #{@przedzial} >>>".center(60)
    #puts @wylosowana
      until @odpowiedz == "koniec"
        puts ""
        puts "Podaj liczbe >>> "
        @odpowiedz = gets.chomp
          if @odpowiedz == "koniec"
            puts "poddajesz sie"
            puts "Szukana liczba to: " + @wylosowana.to_s
          elsif
            @odpowiedz.to_i > @wylosowana
              puts "Próba nr: #{@punktacja}, wynik: ZA DUZO"
              @punktacja +=1
          elsif
            @odpowiedz.to_i < @wylosowana
              puts "Próba nr: #{@punktacja}, wynik: ZA MALO"
              @punktacja +=1
          else
            puts "************ BRAWO ****************"
            puts "sukces za #{@punktacja} razem "
            koniec
          end
      end
    koniec
  end

  def powitanie
    print "Jak masz na imie ? "
    @imie = gets.chomp
    @imie = @imie.capitalize
    puts"*******************************************"
    puts "Witaj #{@imie} w grze w zgadywanie".center(60)
    puts "*******************************************"
    puts "Podpowiedz: jesli chcesz zakączyc grę, wpisz słowo koniec"

  end

  def koniec
    puts "naciścnij [enter]"
    gets
    exit
  end
end


graj = GraZgadywanka.new