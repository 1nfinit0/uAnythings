package Singleton.ControlAsientos;

import java.util.Map;

public class ControlAsientos {
    private static ControlAsientos instance;
    private final Map<Integer, String> asientos = new java.util.HashMap<>();

    private ControlAsientos() {
        asientos.put(1, "Disponible");
        asientos.put(2, "Disponible");
        asientos.put(3, "Disponible");
        asientos.put(4, "Disponible");
        asientos.put(5, "Disponible");
    }

    public static ControlAsientos getInstance() {
        if (instance == null) {
            instance = new ControlAsientos();
        }
        return instance;
    }

    public String estadoAsiento(int numeroAsiento) {
        return "Asiento " + numeroAsiento + ": " + asientos.get(numeroAsiento);
    }
    public void reservarAsiento(int numeroAsiento) {
        asientos.put(numeroAsiento, "Reservado");
    }
}
