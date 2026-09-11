package Ejercicio1.Intrumentos;

import Ejercicio1.interfaces.Encendible;
import Ejercicio1.interfaces.Medible;

public class OximetroDedo implements Medible, Encendible{
  @Override
  public void medirRitmoCardiaco() {
    System.out.println("Midiendo ritmo cardiaco con oximetro de dedo");
  }

  @Override
  public void medirSaturacionOxigeno() {
    System.out.println("Midiendo saturacion de oxigeno con oximetro de dedo");
  }

  @Override
  public void encender() {
    System.out.println("Oximetro de dedo encendido");
  }

  @Override
  public void apagar() {
    System.out.println("Oximetro de dedo apagado");
  }

}
