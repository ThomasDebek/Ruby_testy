class GraDodawanie
  def initialize
    system "cls"   # czyli wyczyscmy ekran
    gra
  end

  def gra
    powitanie
    koniec
  end

  def powitanie
    print "Jak masz na imie? "
    @imie = gets.chomp
    @imie = @imie.capitalize
    puts "********************************"
    puts "Witaj #{@imie} w grze dodawanie".center(60)
    puts "********************************"
  end

  def koniec

  end
end

graj = GraDodawanie.new
