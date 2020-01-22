$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  directors_count = 0
  
  while directors_count < nds.length do
    box_office_total = 0 
    movie_count = 0 
    
    director_name = nds[directors_count][:name]
    while movie_count < nds[directors_count][:movies].count do
        
        box_office_total += nds[directors_count][:movies][movie_count][:worldwide_gross] 
        movie_count += 1
    end
    
    result[director_name] = box_office_total
    directors_count += 1
  end

  result
end