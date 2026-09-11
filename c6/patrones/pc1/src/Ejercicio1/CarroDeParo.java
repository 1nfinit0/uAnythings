package Ejercicio1;

import Ejercicio1.Intrumentos.Desfibrilador;
import Ejercicio1.Intrumentos.Transmisor;

public class CarroDeParo {

  public void reanimar(int julios, String idPaciente) {

    Desfibrilador desfibrilador = new Desfibrilador();
    desfibrilador.encender();
    desfibrilador.aplicarDescargaElectrica(3600);
    desfibrilador.apagar();

    Transmisor transmisor = new Transmisor();
    transmisor.transmitirAlHistorialClinico(idPaciente);
  }

}
