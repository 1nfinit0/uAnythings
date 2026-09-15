import ejercicio1.*;
import ejercicio4.*;

public class App {
    public static void main(String[] args) throws Exception {

        Creador creador = new Creador();
        Espectador espectador = new Espectador();

        creador.subir();
        creador.espectar();
        creador.reproducir();
        creador.comentar();

        espectador.espectar();
        espectador.comentar();
        espectador.reproducir();
        

        // Pagable pagable1 = new Yape();
        // PedidoService pedidoService1 = new PedidoService(pagable1);
        // pedidoService1.ConfirmarPedido();

        // Pagable pagable2 = new Tarjeta();
        // PedidoService pedidoService2 = new PedidoService(pagable2);
        // pedidoService2.ConfirmarPedido();
    }
}
