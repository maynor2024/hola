#definición de métodos
#método con parámetros
def edad (año_naciento, año_actual)
    edad = año_actual.to_i - año_naciento.to_i
    puts "\nTu edad actual es #{edad} años"
    end
    #método sin parámetros
    def nombre
    puts "Ingrese su nombre"
    nombre = gets.chomp
    if nombre.downcase
    nombre = nombre.upcase
    else
    nombre = nombre
    end
    puts "Bienvenido #{nombre}"
    end
    #Invocación de los métodos
    nombre
    puts "Ingrese su año de nacimiento"
    año_naciento = gets.chomp
    puts "Ingrese el año actual"
    año_actual = gets.chomp
    edad(año_naciento, año_actual)