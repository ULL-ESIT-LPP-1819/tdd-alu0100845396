# Práctica 9 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8 

require "spec_helper"

describe Etiqueta do
    before :each do
        @etiqueta = Etiqueta.new("Guacamole",17.2,2.4,0,0,3,1.4,0,0,3.2,1.5,5)
        @etiqueta2 = Etiqueta.new("Cereales",7,4,0,0,71,36,0,46,4,0,6)
        @etiqueta3 = Etiqueta.new("Zumo de naranja",0.1,0,0,0,9.5,8.9,0,0,0.6,0.6,1)
        @etiqueta4 = Etiqueta.new("Jamón ibérico",21.9,6.3,0,0,0.5,0.5,0,0,0.1,30,8)
        @etiqueta5 = Etiqueta.new("Jamón",21.9,6.3,0,0,0.5,0.5,0,0,0.1,30,9)

        @lista = ListValue.new

        @lista.insert_val(@etiqueta)
        @lista.insert_val(@etiqueta2)
        @lista.insert_val(@etiqueta3)
        @lista.insert_val(@etiqueta4)
        @lista.insert_val(@etiqueta5)

    end

    it "Comprobación del metodo collect" do
        expect(@lista.collect{1}).to eq([1,1,1,1,1])
    end
    it "Comprobación del metodo select" do
        expect(@lista.select{@etiqueta2}).to eq([209.2, 575.0, 48.5, 367.3, 373.3])
    end
    it "Comprobación del metodo max" do
        expect(@lista.max).to eq(575.0)
    end
    it "Comprobación del metodo min" do
        expect(@lista.min).to eq(48.5)
    end
    it "Comprobación del metodo sort" do
        expect(@lista.sort).to eq([48.5, 209.2, 367.3, 373.3, 575.0])
    end

    context "# Lista de Pacientes con Enumerable" do
        before :each do
            @paciente = Paciente.new("Juan", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0])
            @paciente2 = Paciente.new("Fernando", 93, 1.85, 45, 1, [91, 90.0], [82, 83.0])
            @paciente3 = Paciente.new("Mario", 112, 1.70, 67, 1, [99, 98.0], [90, 89.0])
            @paciente4 = Paciente.new("Ana", 55, 1.63, 29, 0, [69, 70.0], [61, 60.0])
            @paciente5 = Paciente.new("María", 82, 1.75, 55, 0, [74, 75.0], [69, 70.0])

            @lista = ListValue.new

            @lista.insert_val(@paciente)
            @lista.insert_val(@paciente2)
            @lista.insert_val(@paciente3)
            @lista.insert_val(@paciente4)
            @lista.insert_val(@paciente5)
        end

        it "Comprobación del metodo collect" do
            expect(@lista.collect{0}).to eq([0,0,0,0,0])
        end
        it "Comprobación del metodo select" do
            expect(@lista.select{@paciente2}).to eq([22.49,27.17,38.75,20.7,26.78])
        end
        it "Comprobación del metodo max" do
            expect(@lista.max).to eq(38.75)
        end
        it "Comprobación del metodo min" do
            expect(@lista.min).to eq(20.7)
        end
        it "Comprobación del metodo sort" do
            expect(@lista.sort).to eq([20.7, 22.49, 26.78, 27.17, 38.75])
        end
    end
end