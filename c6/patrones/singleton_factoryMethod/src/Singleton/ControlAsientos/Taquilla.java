package Singleton.ControlAsientos;

public class Taquilla implements Venta{
  @Override
  public void verificarAsiento(int numeroAsiento){
    System.out.println(ControlAsientos.getInstance().estadoAsiento(numeroAsiento));
  }
  @Override
  public void generarVenta(int numeroAsiento){
    ControlAsientos asientos = ControlAsientos.getInstance();
    asientos.reservarAsiento(numeroAsiento);
  }
}
