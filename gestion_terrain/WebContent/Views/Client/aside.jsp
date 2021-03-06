
   <%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("Client") == null) {
		response.sendRedirect("Login");
	}
   %>
   
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="#">Gestion Terrain</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
       
       
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
           <li><a class="dropdown-item" href="Profil_Client"><i class="fa fa-user fa-lg"></i> Profil</a></li>
            <li><a class="dropdown-item" href="Deconnecter"><i class="fa fa-sign-out fa-lg"></i> Se déconnecter</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"  src="https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png" alt="User Image">
        <div>
          <p class="app-sidebar__user-name" style = "font-size: 14px;">${Client.getNom()} ${Client.getPrenom()} </p>
          <p class="app-sidebar__user-designation">Client</p>
        </div>
      </div>
      <ul class="app-menu">
    
        
        <li><a class="app-menu__item" href="Acceuil_Client"><i class="app-menu__icon fa fa-bar-chart"></i><span class="app-menu__label">Statistique</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="Reservation_Client" data-toggle="treeview"><i class="app-menu__icon fa fa-futbol-o"></i><span class="app-menu__label">Réservations</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="reservation?type=FOOT"><i class="icon fa fa-circle-o"></i> Football</a></li>
            <li><a class="treeview-item" href="reservation?type=Volley" rel="noopener"><i class="icon fa fa-circle-o"></i>Volley</a></li>
            <li><a class="treeview-item" href="reservation?type=Basket"><i class="icon fa fa-circle-o"></i>Basket</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="Reclamation_Client" ><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">Réclamations</span></a></li>
        <li><a class="app-menu__item" href="Profil_Client"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">Profil</span></a></li>
        
        
        
        
        </ul>
    </aside>
    