# Stalno dobijam LoadError za require 'session.rb' 
# Isto i za require 'roo', kao i za sve ostale biblioteke

# Posle 2 i po sata pokušavanja da uvežem biblioteke sam odustao, prošao sam kroz skoro 
# sve Stack OverFlow artikle kao i instaliranje Ruby jezika ponovo, kreiranje Gemfile fajla koji
# preuzima direktno sa 'https://rubygems.org', ništa ne pomaže...

require './tabela.rb'

def generisi_tabelu
    zaglavlje = ["Prva Kolona", "Druga Kolona", "Treca Kolona", "Cetvrta Kolona", "Peta Kolona"]

    tabela = Array.new(20) { (0..9).to_a.sample(5) }
    5.times do |i|
        tabela[0][i] = zaglavlje[i]
    end
    
    tabela
end

tabela = Tabela.new(generisi_tabelu)
puts

# 1. Biblioteka može da vrati dvodimenzioni niz sa vrednostima tabele
puts "Ispisivanje svih vrednosti u tabeli:"
puts tabela.to_s
puts

# 2. Moguće je pristupati redu preko t.row(1), i pristup njegovim elementima po sintaksi niza.
puts "Pristupanje celiji preko t.row(1):"
puts tabela.row(1)[0]
puts

# 3. Mora biti implementiran Enumerable modul(each funkcija), gde se vraćaju sve ćelije unutar tabele, sa leva na desno.
puts "Sve celije u tabeli odvojene zarezom:"
tabela.each do |celija|
    print "#{celija}, "
end
puts
puts

# 5. [] sintaksa mora da bude obogaćena tako da je moguće pristupati određenim vrednostima.
puts "Uzimamo kolonu sa t[“Prva Kolona”]:"
 tabela["Prva Kolona"].each  do |celija|
    print "#{celija}, "
end
puts
puts tabela["Prva Kolona"][0]
puts