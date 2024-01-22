@tool
extends EditorPlugin

var array_setting = 'TestEditorSettings/array_setting'
var string_setting = 'TestEditorSettings/string_setting'
var dictionary_setting = 'TestEditorSettings/dictionary_setting'

var settings = EditorInterface.get_editor_settings()

func _enter_tree():
	print('-- enter_tree --')
	print_has_settings()
	create_editor_setting()
	print_has_settings()


func _disable_plugin():
	print('-- disable_plugin --')
	print_has_settings()
	clear_editor_settings()
	print_has_settings()


func create_editor_setting():
	settings.set_setting(array_setting, [])
	settings.set_setting(dictionary_setting, {})
	settings.set_setting(string_setting, 'something')


func clear_editor_settings():
	settings.erase(array_setting)
	settings.erase(string_setting)
	settings.erase(dictionary_setting)


func print_has_settings():
	print('has ', array_setting, ' = ', settings.has_setting(array_setting))
	print('has ', string_setting, ' = ', settings.has_setting(string_setting))
	print('has ', dictionary_setting, ' = ', settings.has_setting(dictionary_setting))

