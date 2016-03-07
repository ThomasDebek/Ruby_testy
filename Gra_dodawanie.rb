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
