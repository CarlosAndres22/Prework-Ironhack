=begin 
Aqui hace la definicion de la clase Hola Mundo
Colocamos el metodo constructor
y por ultimo creamos un mentodo saluda.
=end

class HolaMundo
	def initialize()

	end
	def saluda()
		cadena= "codigoFacilito"
		cadena = cadena.center(40,"-")
		print cadena		
		
		
	end
end
#Creamos el objeto de la clase Hola Mundo
object= HolaMundo.new()
 object.saluda
 gets()
