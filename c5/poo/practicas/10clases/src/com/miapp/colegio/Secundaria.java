package src.com.miapp.colegio;

public class Secundaria extends Alumno {
    private int prom_laboratorio;

    public Secundaria(int codigo, String apellido, String nombre, Character sexo, int ex_parcial, int ex_final, int prom_practica, int prom_laboratorio) {
        super(codigo, apellido, nombre, sexo, ex_parcial, ex_final, prom_practica);
        this.prom_laboratorio = prom_laboratorio;
    }

    public double calcularPromedio() {
        return (getEx_parcial() + getEx_final() + getProm_practica() + prom_laboratorio) / 4.0;
    }
}