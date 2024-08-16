class DatosUsuario
    def initialize
      @usuarios = cargar_informacion
    end
  
    def cargar_informacion
      user_data = {
        nombres: "Maria,Pedro,Juan,Alberto",
        celulares: "2248-6559,9845-6532,8265-4536,7896-4514"
      }
  
      nombres = user_data[:nombres].split(',')
      celulares = user_data[:celulares].split(',')
  
      nombres.zip(celulares).to_h
    end
  
    def mostrar
      puts "Nombre".ljust(20) + "Celular"
  
      @usuarios.each do |nombre, celular|
        puts "#{nombre.ljust(20)}#{celular}"
      end
    end
  
    def buscar_numero(nombre)
      nombre_formateado = nombre.capitalize
  
      if @usuarios.key?(nombre_formateado)
        puts "El Número de teléfono de #{nombre_formateado}: #{@usuarios[nombre_formateado]}"
        puts "\n"
      else
        puts "\nEl Número no se encuentra"
      end
    end
  end
  
  datos_usuarios = DatosUsuario.new
  
  loop do
    datos_usuarios.mostrar
    puts "Ingrese un nombre (o presione Enter para salir):"
    nombre = gets.chomp
  
    break if nombre.empty?
  
    datos_usuarios.buscar_numero(nombre)
  end
  