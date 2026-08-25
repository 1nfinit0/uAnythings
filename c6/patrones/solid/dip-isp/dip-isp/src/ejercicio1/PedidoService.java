package ejercicio1;

public class PedidoService {

  private Pagable pedido;

  public PedidoService(Pagable pedido) {
    this.pedido = pedido;
  }

  public void ConfirmarPedido() {
    System.out.println("Pedido confirmado");
    pedido.pagar();
  }
}
