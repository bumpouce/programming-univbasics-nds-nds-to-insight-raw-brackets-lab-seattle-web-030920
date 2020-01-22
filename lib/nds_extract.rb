$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
<<<<<<< HEAD
=======
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

>>>>>>> 2be5e5be0b2faa6673e403da6ec5b6aa796adf7a
  result = {}
  directors_count = 0
  
  while directors_count < nds.length do
    box_office_total = 0 
    movie_count = 0 
    
<<<<<<< HEAD
    director_name = nds[directors_count][:name]
    while movie_count < nds[directors_count][:movies].count do
        
        box_office_total += nds[directors_count][:movies][movie_count][:worldwide_gross] 
        movie_count += 1
    end
    
    result[director_name] = box_office_total
=======
    while movie_count < nds[directors_count][:movies].count do
        box_office_total += nds[directors_count][:movies][movie_count][:]
        movie_count += 1
    end
    
    puts "Director: #{nds[directors_count][:name]} has a box office total of $ #{box_office_total}" 
    
>>>>>>> 2be5e5be0b2faa6673e403da6ec5b6aa796adf7a
    directors_count += 1
  end

  result
<<<<<<< HEAD
end
=======
end
>>>>>>> 2be5e5be0b2faa6673e403da6ec5b6aa796adf7a
