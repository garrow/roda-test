require "roda"

class App < Roda
  plugin :render

  route do |r|
    render('home')
  end
end

run App.freeze.app
