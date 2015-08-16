require_relative 'slick_button'
require_relative 'save_command'

but = SlickButton.new(SaveCommand.new)
but.on_clicked
