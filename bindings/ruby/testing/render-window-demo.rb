require 'sfml/system'
require 'sfml/window'
require 'sfml/graphics'

app = SFML::RenderWindow.new( [800, 600], "My Ruby SFML" )
app.framerate = 100
app.position = [300, 300]
input = app.input

shape = SFML::Shape.rectangle( [-10, -10, 20, 20], SFML::Color::White )

while app.open?
  while event = app.get_event
    if event.type == SFML::Event::Closed
      app.close
    end
  end
  
  
  app.clear
  shape.position = [input.mouseX, input.mouseY]
  app.draw shape  
  app.display
end