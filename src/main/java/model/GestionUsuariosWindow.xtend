package model

import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.Dialog
import org.uqbar.arena.windows.WindowOwner
import ui.MenuApp

class GestionUsuariosWindow extends Dialog<MenuApp> {
	new(WindowOwner owner, MenuApp model) {
		super(owner, model)
		title = 'Gestión de Usuarios'
	}
	
	override protected createFormPanel(Panel mainPanel) {
		new Label(mainPanel).text = "Test"
	}
	
}