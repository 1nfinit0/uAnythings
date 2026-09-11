package Ejercicio1.Intrumentos;

import Ejercicio1.interfaces.Transmitible;

public class Transmisor implements Transmitible{
  @Override
  public void transmitirAlHistorialClinico(String idPaciente) {
    System.out.println("Transmitiendo datos del paciente con ID: " + idPaciente + " al historial clínico");
  }
}
