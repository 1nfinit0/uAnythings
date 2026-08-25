public class App {
    public static void main(String[] args) throws Exception {

        interface Registro {
            void RegistrarEntrada();
            void RegistrarSalida();
        }

        interface Cerrar {
            void CerrarEstablecimiento();
        }

        class Trabajador {
            void ImprimirCargo(){
                System.out.println("El cargo del trabajador.");
            };
        }

        class Vendedor extends Trabajador implements Registro {
            @Override
            public void RegistrarEntrada(){
                System.out.println("Entrada registrada para Vendedor");
            }
            @Override
            public void RegistrarSalida(){
                System.out.println("Salida registrada para el vendedor");
            };
            @Override
            public void ImprimirCargo(){
                System.out.println("Vendedor");
            };
        }

        class Gerente extends Trabajador implements Cerrar {

          @Override
          void ImprimirCargo() {
            System.out.println("Gerente");
          }

          @Override
          public void CerrarEstablecimiento() {};


        }

        Vendedor mike = new Vendedor();
        mike.ImprimirCargo();
        mike.RegistrarEntrada();

        Gerente pepe = new Gerente();
        pepe.ImprimirCargo();
        pepe.CerrarEstablecimiento();

    }
}
