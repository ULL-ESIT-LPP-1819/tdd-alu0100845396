# Práctica 5 - Lenguajes y Paradigmas de Programación
#
# Escribir un programa Ruby para realizar el registro de los datos antropométricos de una
# valoración nutricional y calcular los valores de los principales índices de composición corporal.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

class AntroData           # Declarción de la clase AntroData

    attr_reader :peso, :talla, :edad, :sexo, :cadera, :cintura

    def initialize(peso, talla, edad, sexo, cadera, cintura)          # Constructor de la clase AntroData
        @peso = peso
        @talla = talla
        @edad = edad
        @sexo = sexo
        @cadera = cadera
        @cintura = cintura
    end

    def to_s        # Método to_s de visualización de datos
        puts "------ Valores ------"
        puts "Peso: #{@peso}" , "Talla: #{@talla}" , "Edad: #{@edad}" , "Sexo: #{@sexo}" , "Circ. cadera: #{@cadera}" , "Circ. cintura: #{@cintura}"
    end

    def calculate_imc       # Método de cálculo del IMC del indviduo
        @imc = (@peso / (@talla * @talla)).round(2)
    end

    def calculate_percentgrasa      # Método de cálculo del porcentaje de grasa de individuo
        grasa = (1.2 * @imc + 0.23 * @edad - 10.8 * @sexo - 5.4).round(3)
    end

    def calculate_rcc               # Método de cálculo de RCC del individuo
        cintura_med = ((@cintura[0] + @cintura[1]) / 2)
        cadera_med = ((@cadera[0] + @cadera[1]) / 2)

        @rcc = (cintura_med / cadera_med).round(2)
    end

    def clasification_imc       # Método de clasificación de IMC
        case @imc
        when 0 .. 18.5
            "Bajo peso"
        when 18.5 .. 24.9
            "Adecuado"
        when 25 .. 29.9
            "Sobrepeso"
        when 30 .. 34.9
            "Obesidad grado 1"
        when 35 .. 39.9
            "Obesidad grado 2"
        else
            "Obesidad grado 3"
        end
    end

    def clasification_rcc    # Método de clasficación de riesgo según RCC hombre
        if @sexo == 1
            case @rcc
            when 0.83 .. 0.88
                "Bajo"
            when 0.88 .. 0.95
                "Moderado"
            when 0.95 .. 1.01
                "Alto"
            when 1.01 .. 2
                "Muy alto"
            end
        else
            case @rcc
            when 0.72 .. 0.75
                "Bajo"
            when 0.75 .. 0.82
                "Moderado"
            when 0.82 .. 2
                "Alto"
            end
        end
    end
end