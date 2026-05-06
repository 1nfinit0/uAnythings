package src.com.miapp.clases;

import java.util.Scanner;

public class ImplClases {
  public void Implementacion() {
    Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese tipo de trabajador (auxiliar/tecnico):");
        String tipo = scanner.nextLine();
        System.out.println(tipo);

        Trabajador trabajador;

        // private String codigo;
        // private String apellidos;
        // private String nombres;
        // private String categoria;
        // private double sueldoBasico;
        // private double bonificacion;
        // private double descuento;

        if (tipo.equals("Auxiliar")) {


            System.out.println("Ingrese código:");
            String codigo = scanner.nextLine();
            System.out.println("Ingrese Apellidos:");
            String apellidos = scanner.nextLine();
            System.out.println("Ingrese Nombres:");
            String nombres = scanner.nextLine();
            String categoria = tipo;
            System.out.println("Ingrese sueldo básico:");
            double sueldoBasico = scanner.nextDouble();
            System.out.println("Ingrese bonificación:");
            double bonificacion = scanner.nextDouble();
            System.out.println("Ingrese descuento:");
            double descuento = scanner.nextDouble();
            System.out.println("Ingrese bonificación de riesgo:");
            double bonificacionRiesgo = scanner.nextDouble();
            
            
            trabajador = new Auxiliar(codigo, apellidos, nombres, categoria, sueldoBasico, bonificacion, descuento, bonificacionRiesgo);

            System.out.println("Trabajador creado: " + trabajador.saludar());
            System.out.println("Sueldo neto: " + trabajador.calcularSueldo());

        } else if (tipo.equals("Tecnico")) {
            System.out.println("Ingrese código:");
            String codigo = scanner.nextLine();
            System.out.println("Ingrese Apellidos:");
            String apellidos = scanner.nextLine();
            System.out.println("Ingrese Nombres:");
            String nombres = scanner.nextLine();
            String categoria = tipo;
            System.out.println("Ingrese sueldo básico:");
            double sueldoBasico = scanner.nextDouble();
            System.out.println("Ingrese bonificación:");
            double bonificacion = scanner.nextDouble();
            System.out.println("Ingrese descuento:");
            double descuento = scanner.nextDouble();
            System.out.println("Ingrese bonificación especial:");
            double bonificacionEspecial = scanner.nextDouble();

            
            trabajador = new Tecnico(codigo, apellidos, nombres, categoria, sueldoBasico, bonificacion, descuento, bonificacionEspecial);

            System.out.println("Trabajador creado: " + trabajador.saludar());
            System.out.println("Sueldo neto: " + trabajador.calcularSueldo());
        } else {
            System.out.println("Tipo inválido");
            scanner.close();
            return;
        }

        System.out.println("Trabajador creado: " + trabajador);
        scanner.close();
  }
}
