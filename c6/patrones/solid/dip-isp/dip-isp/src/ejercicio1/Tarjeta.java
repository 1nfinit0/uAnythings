package ejercicio1;

public class Tarjeta implements Pagable {
  @Override
  public void pagar() {
    System.out.println("Pago realizado con Tarjeta");
  }
}
