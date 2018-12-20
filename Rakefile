require "bundler/gem_tasks"
task :default => :spec

desc "Ejecutar las expectativas de la clase Etiqueta"
task :spec do
  sh "rspec -I. spec/etiqueta_nutri_spec.rb"
end

desc "Ejecutar las expectativas de la clase Individuo"
task :spec do
  sh "rspec -I. spec/individuo_spec.rb"
end

desc "Ejecutar las expectativas de la clase Individuo y Etiqueta para el menú dietético"
task :spec do
  sh "rspec -I. spec/menu_spec.rb"
end

desc "Ejecutar las expectativas de ordenación de array y lista"
task :spec do
  sh "rspec -I. spec/ordenacion_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/etiqueta_nutri_spec.rb --format documentation"
end