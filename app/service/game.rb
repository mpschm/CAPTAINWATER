require 'gosu'
require_relative 'player'
require_relative 'star'


class Game < Gosu::Window
  def initialize
    super 640, 480

    self.caption = "Coco Mania"
    @player = Player.new
    @player.warp(320, 410)
    @background_image = Gosu::Image.new("media/blue.png", :tileable => true)
    
    @star_img = Gosu::Image.load_tiles("media/water-drop.png", 10, 10)
    @stars = Array.new

    @font = Gosu::Font.new(20)
  end

  def update
    if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      @player.turn_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      @player.turn_right
    end
    @player.move
    @stars.each { |star| star.move }
    @player.collect_stars(@stars)

    if rand(100) < 4 and @stars.size < 50
      @stars.push(Star.new(@star_img))
    end
  end

  def draw
    @background_image.draw(0, 0, 0)
    @player.draw
    @stars.each { |star| star.draw }
    @font.draw("Score: #{@player.score}", 10, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)

  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
end

Game.new.show
