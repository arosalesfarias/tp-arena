package model

import ar.edu.eventos.Usuario.Usuario
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.MainWindow
import ui.MenuApp
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class Menu extends MainWindow<MenuApp> {

	new() {
		super(new MenuApp)
	}

	override createContents(Panel mainPanel) {

		this.title = "Menu Principal"

		val table = new Table<Usuario>(mainPanel, typeof(Usuario)) => [
			items <=> "usuarios"
			value <=> "usuarioSeleccionado"
			numberVisibleRows = 10
		]

		new Column<Usuario>(table) => [
			title = "Username"
			fixedSize = 150
			bindContentsToProperty("nombreDeUsuario")
		]

		new Column<Usuario>(table) => [
			title = "Nombre"
			fixedSize = 100
			bindContentsToProperty("nombre")
		]
		
		new Column<Usuario>(table) => [
			title = "Apellido"
			fixedSize = 100
			bindContentsToProperty("apellido")
		]
	}

	def static main(String[] args) {
		new Menu().startApplication
	}

}
