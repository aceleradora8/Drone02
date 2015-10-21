class Drone

	def initialize(x, y, position, lim_x, lim_y)
		@x = x
		@y = y
		@pos = position
		@lim_x = lim_x
		@lim_y = lim_y
	end

	def up()
		if @y < @lim_y
			@y += 1
		end
	end 

	def down()
		if @y > 0
			@y -= 1
		end
	end

	def left()
		if @x < @lim_x
			@x -= 1
		end
	end

	def right()
		if @x > 0
			@x += 1
		end
	end

	def move()
		if @pos == "N"
			up
		elsif @pos == "W"
			left
		elsif @pos == "E"
			right
		else
			down
		end
	end

	def girar_esquerda()
		if @pos == "N"
			@pos = "W"
		elsif @pos == "W"
			@pos = "S"
		elsif @pos == "S"
			@pos = "E"
		elsif @pos == "E"
			@pos = "N"
		end
	end

	def girar_direita()
		if @pos == "N"
			@pos = "E"
		elsif @pos == "E"
			@pos = "S"
		elsif @pos == "S"
			@pos = "W"
		elsif @pos == "W"
			@pos = "N"
		end
	end

	def ler_instrucao(comandos)
		for counter in 0..comandos.size-1
			aux = comandos.to_s[counter]
				if aux == "E"
					girar_esquerda
				elsif aux == "D"
					girar_direita
				elsif aux == "M"
					 move
				elsif
					puts "Comando Inválido!!"
				end 
		end
	end

	def mostra_resultados()
		puts "#{@x} #{@y} #{@pos}"
	end

end


###main

	puts "Digite x: "
	posicao_x = gets.chomp.to_i
	puts "Digite y: "
	posicao_y = gets.chomp.to_i
	puts "Digite os valores para o drone (ex: 1 2 N)"
	coordenadas = gets.chomp.split(' ')
	puts "Digite os comandos para mover o drone (ex: EEMMD)"
	cmds = gets.chomp
	
	drone = Drone.new(coordenadas[0].to_i,coordenadas[1].to_i,coordenadas[2] , posicao_x, posicao_y)
	drone.ler_instrucao(cmds)
	drone.mostra_resultados	
	





