package Ejercicio2;

public class App {

  public static void main(String[] args) {
    Taller taller = new Taller();

    Vehiculo auto = new Auto("AUTO-001");
    Vehiculo moto = new Moto("MOTO-001");
    Vehiculo scooter = new ScooterElectrico("SCOOTER-001");
    Vehiculo bicicleta = new BicicletaMecanica("BICI-001");

    taller.prepararParaAlquiler(auto);
    taller.prepararParaAlquiler(moto);
    taller.prepararParaAlquiler(scooter);
    taller.prepararParaAlquiler(bicicleta);
  }
}
