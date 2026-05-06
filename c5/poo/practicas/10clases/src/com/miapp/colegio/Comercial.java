package src.com.miapp.colegio;

public class Comercial extends Alumno {
    private int prom_taller;

    public Comercial(int codigo, String apellido, String nombre, Character sexo, int ex_parcial, int ex_final, int prom_practica, int prom_taller) {
        super(codigo, apellido, nombre, sexo, ex_parcial, ex_final, prom_practica);
        this.prom_taller = prom_taller;
    }

    public double calcularPromedio() {
        return (getEx_parcial() + getEx_final() + getProm_practica() + prom_taller) / 4.0;
    }
  
}
