package src.com.miapp.colegio;

import java.util.Scanner;

public class ImplColegio {
  public void Colegio() {

    Scanner scanner = new Scanner(System.in);

    System.out.println("Bienvenido al Colegio: Ingrese el código del alumno:");
    int codigo = scanner.nextInt();
    System.out.println("Ingrese el apellido del alumno:");
    String apellido = scanner.next();
    System.out.println("Ingrese el nombre del alumno:");
    String nombre = scanner.next();
    System.out.println("Ingrese el sexo del alumno (M/F):");
    Character sexo = scanner.next().charAt(0);
    System.out.println("Ingrese la nota del examen parcial:");
    int ex_parcial = scanner.nextInt();
    System.out.println("Ingrese la nota del examen final:");
    int ex_final = scanner.nextInt();
    System.out.println("Ingrese el promedio de prácticas:");
    int prom_practica = scanner.nextInt();

    System.out.println("Ingrese el tipo de alumno (1: Primaria, 2: Secundaria, 3: Comercial):");
    int tipo = scanner.nextInt();

    Alumno alumno;

    switch (tipo) {
      case 1:
        System.out.println("Ingrese el promedio de arte:");
        int prom_arte = scanner.nextInt();
        alumno = new Primaria(codigo, apellido, nombre, sexo, ex_parcial, ex_final, prom_practica, prom_arte);
        System.out.println(alumno.calcularPromedio());
        scanner.close();
        break;
      case 2:
        System.out.println("Ingrese el promedio de laboratorio:");
        int prom_laboratorio = scanner.nextInt();
        alumno = new Secundaria(codigo, apellido, nombre, sexo, ex_parcial, ex_final, prom_practica, prom_laboratorio);
        System.out.println(alumno.calcularPromedio());
        scanner.close();
        break;
      case 3:
        System.out.println("Ingrese el promedio de taller:");
        int prom_taller = scanner.nextInt();
        alumno = new Comercial(codigo, apellido, nombre, sexo, ex_parcial, ex_final, prom_practica, prom_taller);
        System.out.println(alumno.calcularPromedio());
        scanner.close();
        break;
      default:
        System.out.println("Tipo de alumno no válido.");
        scanner.close();
        return;
    }

  }
}
