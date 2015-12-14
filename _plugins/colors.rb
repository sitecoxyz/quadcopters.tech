require 'json'
module Jekyll
  class ColorGenerator < Generator

  def generate(site)
    i = rand(100)
    colors = JSON.parse(File.read('colors.json'))
    site.config['color1'] = '#'+colors[i][0]#'#B23707'
    site.config['color2'] = '#'+colors[i][1]#'#597432'
    site.config['color3'] = '#'+colors[i][2]#'#BFB7AA'
    site.config['color4'] = '#'+colors[i][3]#'#7960A3'
    site.config['color5'] = '#'+colors[i][4]#'#593B8E'
    site.config['theme_num'] = i.to_s
  end

  end
end
