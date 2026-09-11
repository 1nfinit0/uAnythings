package Ejercicio2;

public class BicicletaMecanica extends Vehiculo {

  public BicicletaMecanica(String placa) {
    super(placa);
  }

  @Override
  public void desplazar() {
    System.out.println(placa + ": pedaleando");
  }
}
