extends Node2D
class_name SlotTile

var size :Vector2

func _ready():
  pass

func set_texture(tex):
  $Sprite.texture = tex
  set_size(size)

func set_size(new_size: Vector2):
  size = new_size
  $Sprite.scale = size / $Sprite.texture.get_size()
  
func set_speed(speed):
  $Tween.playback_speed = speed
  
func move_to(to: Vector2):
  $Tween.interpolate_property(self, "position",
    position, to, 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
  $Tween.start()

func move_by(by: Vector2):
  move_to(position + by)
  
func spin_up():
  $Animations.play('SPIN_UP')
  
func spin_down():
  $Animations.play('SPIN_DOWN')
  
