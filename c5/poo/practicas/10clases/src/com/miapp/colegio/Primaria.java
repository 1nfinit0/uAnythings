package src.com.miapp.colegio;

public class Primaria extends Alumno {
    private int prom_arte;

    public Primaria(int codigo, String apellido, String nombre, Character sexo, int ex_parcial, int ex_final, int prom_practica, int prom_arte) {
        super(codigo, apellido, nombre, sexo, ex_parcial, ex_final, prom_practica);
        this.prom_arte = prom_arte;
    }

    public double calcularPromedio() {
        return (getEx_parcial() + getEx_final() + getProm_practica() + prom_arte) / 4.0;
    }
}
