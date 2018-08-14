package ui

import ar.edu.eventos.Repositorios.RepoUsuario
import ar.edu.eventos.Usuario.Usuario
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class MenuApp {
	Usuario usuarioSeleccionado
	RepoUsuario repoUsuarios = new RepoUsuario()
	
	def getUsuarios() {
		repoUsuarios.usuarios
	}
}

class MenuGestionUsuarios{
	
}