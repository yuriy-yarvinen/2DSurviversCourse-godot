extends PanelContainer

signal selected

@onready var name_label: Label = $%NameLabel
@onready var decription_label: Label = $%DescriptionLabel


func _ready():
	gui_input.connect(on_gui_input)


func set_ability_upgrade(upgrade: AbilityUpgrade):
	name_label.text = upgrade.name
	decription_label.text = upgrade.description

func on_gui_input(event: InputEvent):
	if event.is_action_pressed("left_click"):
		selected.emit()