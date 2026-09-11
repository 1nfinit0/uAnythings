package Ejercicio2;

public class ScooterElectrico extends Vehiculo {

  public ScooterElectrico(String placa) {
    super(placa);
  }

  @Override
  public void desplazar() {
    System.out.println(placa + ": pedaleando");
  }
}
