class Tabela

    include Enumerable

    attr_accessor :tabela

    def initialize(tabela)
        @tabela = tabela
    end

    def to_s
        @tabela.map { |celija| celija.join("\t") }
    end

    def row(indeks)
        @tabela[indeks]
    end

    def each
        @tabela.flatten.each do |celija|
            yield celija
        end
    end

    def [](kolona)
        kolone = @tabela.transpose
        5.times do |i|
            return kolone[i] if kolone[i][0] == kolona
        end
    end
end
