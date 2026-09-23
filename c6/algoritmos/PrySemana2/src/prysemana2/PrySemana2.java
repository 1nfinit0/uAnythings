package prysemana2;
import prysemana2.le;
public class PrySemana2 {
    public static void main(String[] args) {
        String menu = "*********************************\n"
                + "[1] Agregar\n"
                + "[2] Modificar\n"
                + "[3] Eliminar\n"
                + "[4] Listar\n"
                + "[5] Salir\n"
                + "*********************************\n";

        int op=5;
        int cont = 0;
        Persona[] lista = new Persona[5];
        do {
           switch (op = le.leerInt(menu)) {
            case 1:
                lista[cont] = new Persona(le.leerString("Ingrese nombre"), le.leerInt("Ingrese edad"));
                cont++;
                break;
            case 2:
                le.mostrarInformacion("Modificar");
                break;
            case 3:
                le.mostrarInformacion("Eliminar");
                break;
            case 4:
                String mensaje = "";
                for (Persona p : lista) {
                    if (p != null) {
                        mensaje += p.toString() + "\n";
                    }
                }
                le.mostrarInformacion(mensaje);
                break;
            case 5:
                le.mostrarInformacion("Saliendo");
                break;

            default:
                le.mostrarError("Opción no correcta");
        }
        } while (op != 5);
    }
}
