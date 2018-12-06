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
        @etiqueta6 = Etiqueta.new("Salmón",54,6,0,0,4,0,6,7,0,0,10)

        @lista = List.new
        @lista.insert_val(@etiqueta)
    end

    it "Comprobación del metodo collect" do
        expect(@lista.collect{1}).to eq([1,2,3,4,5,6])
    end
    it "Comprobación del metodo select" do
        expect(@lista.select{@etiqueta2}).to eq([3,71,1,0,30,54])
    end
    it "Comprobación del metodo max" do
        expect(@lista.max).to eq(71)
    end
    it "Comprobación del metodo min" do
        expect(@lista.min).to eq(0)
    end
    it "Comprobación del metodo sort" do
        expect(@lista.sort).to eq([0,1,3,30,54,71])
    end
end