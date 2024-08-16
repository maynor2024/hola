class Calcular
    def initialize
      @resultado_par = 0
      @resultado_impar = 0
    end
  
    def calcular_suma(numero_maximo)
      @resultado_par = 0
      @resultado_impar = 0
  
      (0...numero_maximo).each do |i|
        if i.even?
          @resultado_par += i
        else
          @resultado_impar += i
        end
      end
    end
  
    def mostrar_resultados
      puts "La suma de los números pares hasta el número máximo es: #{@resultado_par}"
      puts "La suma de los números impares hasta el número máximo es: #{@resultado_impar}"
    end
  end
  
  resolver = Calcular.new
  print "Ingrese el número máximo hasta el cual sumar: "
  numero_maximo = gets.chomp.to_i
  
  resolver.calcular_suma(numero_maximo)
  resolver.mostrar_resultados
  