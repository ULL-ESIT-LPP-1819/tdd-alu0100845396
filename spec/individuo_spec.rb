# Práctica 8 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "spec_helper"

describe Etiqueta do

    context "# Expectativas de herencia de la clase Individuo" do

        before :each do
            @individuo = Individuo.new("Marcos")
            @paciente = Paciente.new("Francisco", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0])
        end

        it "El objeto Individuo es una instancia de la clase Individuo" do
            expect(@individuo).to be_an_instance_of(Individuo)
        end
        it "El objeto Paciente es una instancia de la clase Paciente" do
            expect(@paciente).to be_an_instance_of(Paciente)
        end

        it "El objeto Individuo responde al método nombre" do
            expect(@individuo).to respond_to(:nombre)
        end
        it "El objeto Paciente responde a los metodos nombre y datos" do
            expect(@paciente).to respond_to(:nombre, :datos)
        end
    end
end