package src.com.miapp.interfaces;

public class Implementacion {

  public void ejecutar() {
    Trabajador tecnico = new Tecnico("Juan", "Perez", "Soltero", 3000.0, 500.0, 200.0, "Tecnico", 150.0);
    Trabajador auxiliar = new Auxiliar("Maria", "Gomez", "Casada", 2000.0, 300.0, 100.0);
    Trabajador profesional = new Profesional("Carlos", "Lopez", "Divorciado", 4000.0, 800.0, 300.0, "Profesional", 100.0);

    tecnico.imprimirDatos();
    tecnico.mostrarSueldoNeto();
    System.out.print("\n");

    auxiliar.imprimirDatos();
    auxiliar.mostrarSueldoNeto();
    System.out.print("\n");

    profesional.imprimirDatos();
    profesional.mostrarSueldoNeto();
    System.out.print("\n");
  }
  
}
