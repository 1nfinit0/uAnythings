package src.com.miapp.sobrecarga;

class Alumno {
    String codigo;
    String nombres;
    String apellidos;
    String sexo;
    int anio;
    String carrera;

    Alumno(String codigo, String nombres, String apellidos, String sexo, int anio, String carrera) {
        this.codigo = codigo;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.sexo = sexo;
        this.anio = anio;
        this.carrera = carrera;
    }

    double calcularPromedio(double parcial, double fin, double practicas) {
        return (parcial + fin + practicas) / 3;
    }

    double calcularPromedio(double parcial, double fin, double practicas, int laboratorio) {
        return (parcial + fin + practicas + laboratorio) / 4;
    }

    double calcularPromedio(double parcial, double fin, double practicas, float campo) {
        return (parcial + fin + practicas + campo) / 4;
    }

    double calcularPromedio(double parcial, double fin, double practicas, double gestion) {
        return (parcial + fin + practicas + gestion) / 4;
    }
}
