# ctr + R



puts "ala ma kota"


x = "als ma kota"

print x

puts "Piko w oko"
puts "Piko w oko"
puts "Piko w oko"
puts "Piko w oko"
puts "Piko w oko"



uczestnik = "Adam"
zdnaie = "Klikaj"
wyraz = "pan"

puts wyraz +" "+ zdnaie +" "+ uczestnik


polka = ["HObbit", "Potop", "kwiatek", 2, 5.5, "Rambo"]
polka.class
puts polka


puts polka[3].class

puts polka[2] = "Alchemik"
puts polka

polka.clear

puts polka
puts "a"

koszyk = ["mleko", "cukier", ["bulka", "ciastko"] ]

print koszyk[2][0]
print koszyk.inspect

print koszyk.join
print koszyk.join(", ")

zamowienie = "kawa,herbata,cukier,ciastko"
zamowienie_tablica = zamowienie.split(",")

puts zamowienie_tablica.class




oceny = [2, 3, 4, 5, 1, 3, 5]
oceny << 4
oceny << 1
oceny + [2, 3, 3, 3, 4 ]
oceny - [1, 2]
print oceny.sort
print oceny.sort.reverse

print oceny.uniq   #Tylko jeden element

print oceny.uniq.sort
puts oceny.uniq!.sort  #Obcięcie tych samych elementów



# TABLICE CD.
koszyczek = ["sol", "mleko", "ciacho", "Ciacho", "banan"]
print koszyczek

print koszyczek.delete("ciacho")
print koszyczek
puts ""
print koszyczek.delete_at(1)  # usunie nam pierwszy element z tablicy
print koszyczek.pop  #usnie nam pierwszy element po prawej
puts " cccc"
puts koszyczek
puts " a"
print koszyczek.push("bannany")  # dodaje nam element do tablicy
puts " QQQQQQ"
puts koszyczek.shift  # pokazuje nam pierwszy element usuniety z tablicy
#puts koszyczek.unshift  # przywrucenie elementu

puts " @@@@@@@"

print koszyczek.push(1)

# TABLICE ASOCJACYJNE
puts " "
print " TABLICE ASOCJACYJNE"

puts " "
klient = ["Jan", "Kowalski", "bruntet"]
print klient

puts" "
puts klient[0] + " " + klient[1]

puts " "
print klient << "Alan"
puts klient

puts " "
osoba = {}
osoba.class
osoba = {"imie" => "Jan", "nazwisko" => "Kowalski", "wlosy" => "brunet"}

puts osoba
puts osoba["imie"] + " " + osoba["wlosy"]
print osoba.keys     #poda nam wszystkie klucze

puts " "
print osoba.values
puts " "
print osoba["wzrost"] = 173    # DODAJMY KOLENY ELEMENT BEZPOSREDNIO

print osoba
# print osoba.clear   WYCZYSCI NAM TABLICE

# SYMBOLE
puts " "
print " SYMBOLE"
puts " "
123.class
123.object_id
puts "Ala".object_id   # daje nam to ze zawsze jest to inna komurka
puts "Ala".object_id

puts " "
puts :ola.object_id     # Symbole nas ratuja w tym przypadku po przez symbol i znak dwukropka
puts :ola.object_id     # zawsze bedzie ta sama komurka

puts " "
puts klients = {:imie=>"Jan", :nazwisko=>"Kowalski"}
puts klients.keys   # I tu porozumiewamy sie po przez symbole
puts klients[:imie] +  " Bardzo wazne, i odwolujemy sie w naszej api wlasnie pr przez te symbole"



# OBIEKTY BOOLEAN
puts  " "
puts "OBIEKTY BOOLEAN"
puts " "

x = 1
puts x
puts "poruwnajmy naszego x do jakies liczby"
puts x == 1
puts " - Sprawdzamy czy moje x rowna sie jeden"
puts x == 2

puts " !!!!!!"
puts x != 2  #spr. czy nasze x jest różne od 2
puts x != 1 # spr. czy nasze x jest różne od 1
puts x > 3 # spr. czy nasze x jest wieksze od 3
puts x >= 3 # spr. czy nasze x jest wieksze badz równe od 3
puts x >= 1

puts " "

xa = 40
puts xa
puts xa >= 1
puts xa <= 10

puts xa >=1 and xa <= 10 #spr.czy nasze x jest wieksze badz rowne 1, oraz "and" czy jest mniejsze badz rowne 10 UWAGA:musi byc spelniony pierwszy jak i drugi warunek
puts " !!!!!"

puts xa >= 30
puts xa <=20
puts xa >= 30 or xa <=20   # TU MUSI BYC SPELNIONY JEDEN Z WARUNKOW
puts " !@!@!@!@"
puts xa >= 30 || xa <=20   # TU JEST RÓWNOWAŻNIK ZŁĄCZENIA or
puts xa >= 30 || xa <=20 || xa >= 100  # Wystarczy ze jeden z nich jest prawdziwy i da nam true



# OBIEKTY BOOLEAN C.D.
puts  " "
puts "OBIEKTY BOOLEAN"
puts " "


puts xx = 10
puts xx.between?(5, 15)  # spr. zakres czy nasze xx znajduje sie w przedziale
puts xx.between?(5, 9)

puts " "
puts ocenyy = []
puts ocenyy.class  # spr. czym jest ta tablica
puts ocenyy.empty? # spr. czy jest pusta
print ocenyy.push(1,2,3,4,5)  # napejlnijmy tablice
puts " "
puts ocenyy.empty? # spr. czy teraz jest pusta
puts oceny.include?(3) # spr. czy jest taki element o wartosci 3
puts oceny.include?(9) # spr. czy jest taki element o wartosci 9
puts " "

puts klientss = {"imie"=>"Jan", "nazwisko"=>"Kowalski"}
puts klientss.has_key?("imie") # spr. czy istnieje taki klucz w tej tablicy
puts klientss.has_key?("wzrost") # spr. czy istniej taki klucz o nazwie wzrost

puts " "
puts klientss.has_value?("Kowalski" ) # spr. czy istnieje taka wartosc



puts " "
puts "OBIEKTY TYPU RANGE"




