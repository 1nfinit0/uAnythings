package Ejercicio1;
public class App {
    public static void main(String[] args) throws Exception {
        CarroDeParo carroDeParo = new CarroDeParo();
        carroDeParo.reanimar(3600, "12345");

        TopicoGeneral topicoGeneral = new TopicoGeneral();
        topicoGeneral.inyectar(40.0);
        topicoGeneral.trasladarMuestra("Hospital A", "Laboratorio B");
    }
}
