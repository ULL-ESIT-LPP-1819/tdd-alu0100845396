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

            @list1 = ListValue.new()
        end

        it "Expectativas de jerarquía de clases y herencia" do
            expect(@list1).to be_a_kind_of(ListValue)
            expect(@list1).not_to be_a_kind_of(Paciente)

            expect(@individuo).not_to be_a_kind_of(Paciente)
            expect(@individuo).to be_a_kind_of(Individuo)
            expect(@individuo).to be_a_kind_of(Object)
            expect(@individuo).to be_a_kind_of(BasicObject)

            expect(@paciente).to be_a_kind_of(Paciente)
            expect(@paciente).to be_a_kind_of(Individuo)
            expect(@paciente).to be_a_kind_of(Object)
            expect(@paciente).to be_a_kind_of(BasicObject)
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
        it "El objeto Paciente responde al metodo to_s" do
            expect(@paciente).to respond_to('to_s')
        end
    end

    context "# Método de clasificación de Pacientes" do
        before :each do
            @paciente = Paciente.new("Juan", 65, 1.70, 23, 1, [84, 85.0], [71, 70.0])
            @paciente2 = Paciente.new("Fernando", 93, 1.85, 45, 1, [91, 90.0], [82, 83.0])
            @paciente3 = Paciente.new("Mario", 112, 1.70, 67, 1, [99, 98.0], [90, 89.0])
            @paciente4 = Paciente.new("Ana", 55, 1.63, 29, 0, [69, 70.0], [61, 60.0])
            @paciente5 = Paciente.new("María", 82, 1.75, 55, 0, [74, 75.0], [69, 70.0])
            @paciente6 = Paciente.new("Alicia", 150, 1.80, 46, 0, [84, 83.0], [79, 78.0])
        end
        it "Clasificación de pacientes en tratamiento contra la obesidad" do
            list = ListValue.new
            list.insert_val(@paciente)
            list.insert_val(@paciente2)
            list.insert_val(@paciente3)
            list.insert_val(@paciente4)
            list.insert_val(@paciente5)
            list.insert_val(@paciente6)

            expect(clasificate_imc(list)).to eq("{ { 22.49, 27.17, 20.7, 26.78 }, { 38.75, 46.3 } }")
        end
    end
end