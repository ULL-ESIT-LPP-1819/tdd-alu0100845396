# Práctica 7 - Lenguajes y Paradigmas de Programación
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
        @etiqueta = Etiqueta.new("Guacamole",17.2,2.4,0,0,3,1.4,0,0,3.2,1.5,1.3)
    end

    describe "# Expectativas para Etiqueta" do
         it "Probando método para obtener el nombre de la etiqueta" do
             expect(@etiqueta.nombre).to eq("Guacamole")
         end
         it "Probando método para obtener cantidad de grasas" do
             expect(@etiqueta.grasas).to eq(17.2)   
         end    
         it "Probando método para obtener cantidad de grasas saturadas" do
             expect(@etiqueta.grasas_sat).to eq(2.4)
         end
         it "Probando método para obtener cantidad de grasas monosaturadas" do
             expect(@etiqueta.grasas_mono).to eq(0)
         end
         it "Probando método para obtener cantidad de grasas polisaturadas" do
             expect(@etiqueta.grasas_poli).to eq(0)
         end
         it "Probando método para obtener la cantidad de hidratos de carbono" do
             expect(@etiqueta.hidratos).to eq(3) 
         end
         it "Probando método para obtener la cantidad de azúcares" do
             expect(@etiqueta.azucares).to eq(1.4)
         end
         it "Probando método para obtener la cantidad de polialcoholes" do
             expect(@etiqueta.polialcoholes).to eq(0)
         end
         it "Probando método para obtener la cantidad de almidón" do
             expect(@etiqueta.almidon).to eq(0)
         end
         it "Probando método para obtener la cantidad de fibra" do
             expect(@etiqueta.fibra).to eq(3.2)
         end
         it "Probando método para obtener la cantidad de proteínas" do
             expect(@etiqueta.proteinas).to eq(1.5)
         end
         it "Probando método para obtener la cantidad de sal" do
             expect(@etiqueta.sal).to eq(1.3)
         end
 
         it "Probando método para obtener cantidad de grasas en kilojulios (Kj)" do
             expect(@etiqueta.grasas_kj).to eq(636.4)
         end
         it "Probando método para obtener cantidad de grasas monosaturadas en kilojulios (Kj)" do
             expect(@etiqueta.grasas_mono_kj).to eq(0)
         end
         it "Probando método para obtener cantidad de grasas polisaturadas en kilojulios (Kj)" do
             expect(@etiqueta.grasas_poli_kj).to eq(0)
         end
         it "Probando método para obtener cantidad de hidratos de carbono en kilojulios (Kj)" do
             expect(@etiqueta.hidratos_kj).to eq(51)
         end
         it "Probando método para obtener cantidad de polialcoholes en kilojulios (Kj)" do
             expect(@etiqueta.polialcohol_kj).to eq(0)
         end
         it "Probando método para obtener cantidad de almidón en kilojulios (Kj)" do
             expect(@etiqueta.almidon_kj).to eq(0)
         end
         it "Probando método para obtener cantidad de fibra en kilojulios (Kj)" do
             expect(@etiqueta.fibra_kj).to eq(25.6)
         end
         it "Probando método para obtener cantidad de proteínas en kilojulios (Kj)" do
             expect(@etiqueta.proteinas_kj).to eq(25.5)
         end
         it "Probando método para obtener cantidad de sal en kilojulios (Kj)" do
             expect(@etiqueta.sal_kj).to eq(32.5)
         end
         it "Probando método para obtener de valor energético en kilojulios (Kj)" do
             expect(@etiqueta.valor_ener_kj).to eq(771) 
         end
 
         it "Probando método para obtener cantidad de grasas en kilocalorías (Kcal)" do
             expect(@etiqueta.grasas_kcal).to eq(154.8)
         end
         it "Probando método para obtener cantidad de grasas monosaturadas en kilocalorías (Kcal)" do
             expect(@etiqueta.grasas_mono_kcal).to eq(0)
         end
         it "Probando método para obtener cantidad de grasas polisaturadas en kilocalorías (Kcal)" do
             expect(@etiqueta.grasas_poli_kcal).to eq(0)
         end
         it "Probando método para obtener cantidad de hidratos de carbono en kilocalorías (Kcal)" do
             expect(@etiqueta.hidratos_kcal).to eq(12)
         end
         it "Probando método para obtener cantidad de polialcoholes en kilocalorías (Kcal)" do
             expect(@etiqueta.polialcohol_kcal).to eq(0)
         end
         it "Probando método para obtener cantidad de almidón en kilocalorías (Kcal)" do
             expect(@etiqueta.almidon_kcal).to eq(0)
         end
         it "Probando método para obtener cantidad de fibra en kilocalorías (Kcal)" do
             expect(@etiqueta.fibra_kcal).to eq(6.4)
         end
         it "Probando método para obtener cantidad de proteinas en kilocalorías (Kcal)" do
             expect(@etiqueta.proteinas_kcal).to eq(6)
         end
         it "Probando método para obtener cantidad de sal en kilocalorías (Kcal)" do
             expect(@etiqueta.sal_kcal).to eq(7.8)
         end
         it "Probando método para obtener de valor energético en kilocalorías (Kcal)" do
             expect(@etiqueta.valor_ener_kcal).to eq(187)
         end
 
         it "Probando método para obtener %IR valor energético" do
             expect(@etiqueta.valor_ener_ir).to eq(9.18)
         end
         it "Probando método para obtener %IR grasas" do
             expect(@etiqueta.grasas_ir).to eq(24.57)
         end
         it "Probando método para obtener %IR grasas saturadas" do
             expect(@etiqueta.saturadas_ir).to eq(12)
         end
         #it "Probando método para obtener %IR hidratos" do
         #   expect(@etiqueta.hidratos_ir).to eq(1.15)
         #end
         it "Probando método para obtener %IR azúcares" do
             expect(@etiqueta.azucares_ir).to eq(1.56)
         end
         it "Probando método para obtener %IR proteínas" do
             expect(@etiqueta.proteinas_ir).to eq(3)
         end
        it "Probando método para obtener %IR sal" do
            expect(@etiqueta.sal_ir).to eq(21.67)
        end
         it "Probando método para formatear etiqueta" do
        expect(@etiqueta.to_s) == ('Valores Nutricionales 100g/100ML Guacamoles (Grasas: 17.2, Saturadas: 2.4, MonoSaturadas: 0 , Polisaturadas: 0 , Hidratos: 3 , Azucares: 1.4 , Polialcohol: 0 , Almidon: 0 , Fibra: 3.2 , Proteinas: 1.5 , Sal: 1.3')
        end
    end

    describe Node do
        describe "# Expectativas para Node" do
        node = Node.new(2, 3, nil)
            it 'Node existe' do
                expect(node.value).to eq(2)
                expect(node.next).to eq(3)
            end
        end
    end

    describe List do
        describe "#Expectativas para Lista" do
            node = Node.new(2, 3, 1)
            list = List.new(node)
            node2 = Node.new(1, nil, nil)
            list2 = List.new(nil)
            node3 = Node.new(2,nil,nil)

            nodes = [node, node2, node3]

            it "List esta vacía" do
                expect(list2.empty?).to eq(true)
            end
            it "List existe con su head" do  
                expect(list.head).to eq(node)    
            end
            it "List existe con su tail" do
                expect(list.tail).to eq(node)
            end
            it "Primer nodo extraído correctamente" do       
                expect(list.extract_beginning).to eq(node)
            end
            it "Último nodo extraído correctamente" do       
                expect(list.extract_end).to eq(node)
            end
            it "Insertando nodo correctamente" do
                list.insert_beginning(node2)
                expect(list.head).to eq(node2)
            end
            it "Insertar un node por el final en List" do 
                list.insert_end(node3)
                expect(list.tail).to eq(node3)
                expect(list.head).to eq(node2) 
            end
            it "Insertar varios nodos a List" do
                list.insert_multi(nodes)
                expect(list.head).to eq(nodes[2])      
            end
            it "List no está vacía" do
                expect(list.empty?).to eq(false)
            end
        end
    end

    describe ListValue do

        before :each do
            etiqueta_ = Etiqueta.new("Guacamole",17.2,2.4,0,0,3,1.4,0,0,3.2,1.5,5)
            etiqueta2_ = Etiqueta.new("Cereales",7,4,0,0,71,36,0,46,4,0,6)
            etiqueta3_ = Etiqueta.new("Zumo de naranja",0.1,0,0,0,9.5,8.9,0,0,0.6,0.6,1)
            etiqueta4_ = Etiqueta.new("Jamón ibérico",21.9,6.3,0,0,0.5,0.5,0,0,0.1,30,9)
            etiqueta5_ = Etiqueta.new("Jamón",21.9,6.3,0,0,0.5,0.5,0,0,0.1,30,10)
            etiqueta6_ = Etiqueta.new("Salmón",54,6,0,0,4,0,6,7,0,0,8)
        end

        describe "# creando la lista con etiquetas" do

            it "se inserta correctamente en la lista " do
                list3 = ListValue.new()
                expect(list3.insert_val(@etiqueta_)).to be_a(Node)
            end
    
            it "se extrae correctamente de la lista" do
                list3 = ListValue.new()
                expect(list3.insert_val(@etiqueta_)).to be_a(Node)
                expect(list3.extract_val).to be_a(Node)
            end
    
            it "se comprueba correctamente si está vacia" do
                list3 = ListValue.new()
                expect(list3.empty).to be true
                expect(list3.insert_val(@etiqueta_)).to be_a(Node)
                expect(list3.empty).to be false
                expect(list3.extract_val).to be_a(Node)
                expect(list3.empty).to be true
            end
    
            it "se comprueba correctamente el tamaño" do
                list3 = ListValue.new()
                expect(list3.length).to eq(0)
                list3.insert_val(@etiqueta_)
                list3.insert_val(@etiqueta2_)
                expect(list3.length).to eq(2)
            end
    
            it "se devuelve correctamente el contenido" do
                list3 = ListValue.new()
                list3.insert_val(@etiqueta_)
                list3.insert_val(@etiqueta5_)
                expect(list3.to_s).to be_a(String)
            end
        end

        describe "# Clasificación según cantidad de sal" do
            it "Se clasifica correctamente según cantidad de sal " do

            etiqueta_ = Etiqueta.new("Guacamole",17.2,2.4,0,0,3,1.4,0,0,3.2,1.5,5)
            etiqueta2_ = Etiqueta.new("Cereales",7,4,0,0,71,36,0,46,4,0,6)
            etiqueta3_ = Etiqueta.new("Zumo de naranja",0.1,0,0,0,9.5,8.9,0,0,0.6,0.6,1)
            etiqueta4_ = Etiqueta.new("Jamón ibérico",21.9,6.3,0,0,0.5,0.5,0,0,0.1,30,8)
            etiqueta5_ = Etiqueta.new("Jamón",21.9,6.3,0,0,0.5,0.5,0,0,0.1,30,9)
            etiqueta6_ = Etiqueta.new("Salmón",54,6,0,0,4,0,6,7,0,0,10)

            list3 = ListValue.new()

            list3.insert_val(etiqueta_)
            list3.insert_val(etiqueta2_)
            list3.insert_val(etiqueta3_)
            list3.insert_val(etiqueta4_)
            list3.insert_val(etiqueta5_)
            list3.insert_val(etiqueta6_)

            expect(clasification(list3)).to eq("{{ 5, 6, 1 }, { 8, 9, 10 }}")
            end
        end
    end
end