package Ejercicio1;

import Ejercicio1.Intrumentos.BombaDeInfusion;
import Ejercicio1.Intrumentos.Dron;

public class TopicoGeneral {
  BombaDeInfusion bombaDeInfusion = new BombaDeInfusion();
  Dron dron = new Dron();
  public void inyectar(double mililitros) {
    bombaDeInfusion.encender();
    bombaDeInfusion.inyectar(mililitros);
    bombaDeInfusion.apagar();
  }
  public void trasladarMuestra(String origen, String destino) {
    dron.encender();
    dron.trasladarMuestra(origen, destino);
    dron.apagar();
  }
}
