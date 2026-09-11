package Ejercicio1.Intrumentos;

import Ejercicio1.interfaces.Descargable;
import Ejercicio1.interfaces.Encendible;

public class Desfibrilador implements Descargable, Encendible {
  @Override
  public void aplicarDescargaElectrica(int julios) {
    System.out.println("Aplicando descarga electrica de " + julios + " julios");
  }

  @Override
  public void encender() {
    System.out.println("Desfibrilador encendido");
  }

  @Override
  public void apagar() {
    System.out.println("Desfibrilador apagado");
  }
}
