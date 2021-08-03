const overviewPageDisplayName = "Overview";
const pedidosPageRoute = "Pedidos";
const clientesPageRoute = "Clientes";
const campanasPageRoute = "Capañas";
const estadisticaPageRoute = "Estadisticas";
const consultorasPageRoute = "Consultoras";
const nostrosPageRoute = "Nosotros";
const authenticationPageRoute = "Log out";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List sideMenuItemRoutes = [
  overviewPageDisplayName,
  pedidosPageRoute,
  clientesPageRoute,
  campanasPageRoute,
  estadisticaPageRoute,
  consultorasPageRoute,
  nostrosPageRoute,
  authenticationPageRoute,
];
