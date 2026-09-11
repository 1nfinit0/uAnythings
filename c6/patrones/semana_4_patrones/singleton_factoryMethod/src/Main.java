import Singleton.ControlAsientos.App;
import Singleton.ControlAsientos.Kiosko;
import Singleton.ControlAsientos.Taquilla;

public class Main {
    public static void main(String[] args) throws Exception {
        Taquilla taquilla = new Taquilla();
        Kiosko kiosko = new Kiosko();
        App aplicacion = new App();

        System.out.println("\n");
        taquilla.verificarAsiento(1);
        kiosko.verificarAsiento(2);
        aplicacion.verificarAsiento(3);
        aplicacion.verificarAsiento(4);
        aplicacion.verificarAsiento(5);

        System.out.println("\n");
        taquilla.generarVenta(1);
        kiosko.verificarAsiento(1);
        aplicacion.verificarAsiento(1);
    }
}
