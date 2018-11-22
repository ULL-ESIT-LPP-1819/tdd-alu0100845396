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

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/etiqueta_nutri_spec.rb --format documentation"
end