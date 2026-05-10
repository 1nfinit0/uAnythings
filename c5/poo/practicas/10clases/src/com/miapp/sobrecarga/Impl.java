package src.com.miapp.sobrecarga;

public class Impl {
    public void Implementacion() {
        Alumno alumno1 = new Alumno("A001", "Juan", "Perez", "M", 2020, "Ingenieria");
        System.out.println("Promedio 3 notas: " + alumno1.calcularPromedio(15, 18, 17));
        System.out.println("Promedio con laboratorio: " + alumno1.calcularPromedio(15, 18, 17, 20));
        System.out.println("Promedio con campo: " + alumno1.calcularPromedio(15, 18, 17, 19.5f));
        System.out.println("Promedio con gestión: " + alumno1.calcularPromedio(15, 18, 17, 16.5));
    }
  
}
