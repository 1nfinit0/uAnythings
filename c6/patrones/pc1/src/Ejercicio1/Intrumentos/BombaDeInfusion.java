package Ejercicio1.Intrumentos;

import Ejercicio1.interfaces.Encendible;
import Ejercicio1.interfaces.Inyectable;

public class BombaDeInfusion implements Inyectable, Encendible{
  @Override
  public void inyectar(double mililitros) {
    System.out.println("Se inyectaron " + mililitros + " mililitros de medicamento");

  }

  @Override
  public void esterilizar() {
    System.out.println("La bomba de infusión ha sido esterilizada");
  }

  @Override
  public void encender() {
    System.out.println("La bomba de infusión ha sido encendida");
  }

  @Override
  public void apagar() {
    System.out.println("La bomba de infusión ha sido apagada");
  }

}
