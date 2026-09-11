package Ejercicio1.Intrumentos;

import Ejercicio1.interfaces.Delivery;
import Ejercicio1.interfaces.Encendible;

public class Dron implements Delivery, Encendible {
  @Override
  public void trasladarMuestra(String origen, String destino) {
    System.out.println("Trasladando muestra desde " + origen + " hasta " + destino);
  }

  @Override
  public void encender() {
    System.out.println("Dron encendido");
  }

  @Override
  public void apagar() {
    System.out.println("Dron apagado");
  }

}
