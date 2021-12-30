module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
        'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

# Animales
class Ave < Animal
    include Habilidades::Volador
end
class Mamifero < Animal
end
class Insecto < Animal
end

# Aves
class Pinguino < Ave
end
class Paloma < Ave
end
class Pato < Ave
end

# Mamiferos
class Perro < Mamifero
end
class Gato < Mamifero
end
class Vaca < Mamifero
end

# Insectos
class Mosca < Insecto
end
class Mariposa < Insecto
end
class Abeja < Insecto
end

animal1 = Ave.new("pajaro loco")
animal2 = Mamifero.new("hipopotamo")
animal3 = Insecto.new("polilla")

puts animal1.nombre
puts animal2.nombre
puts animal3.nombre