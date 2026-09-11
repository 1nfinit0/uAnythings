import java.util.ArrayList;
import java.util.Arrays;
public class App {
    public static void main(String[] args) throws Exception {
        // En Síntesis, la diferencia entre Shallow Copy y Deep Copy radica en cómo se copian los objetos y sus referencias.

        // Shallow Copy (Copia Superficial): Copia solo los datos del objeto, no los objetos anidados pero si las referencias a ellos, lo que significa que los cambios en los objetos anidados afectarán a ambas copias, siempre y cuando sean objetivos de tipo mutable como listas y otros objetos, para los tipos de datos primitivos como int, float, double, etc. no hay problema ya que estos son inmutables y no se ven afectados por la copia superficial.

        // Deep Copy (Copia Profunda): Crea una copia completa del objeto y de todos los objetos anidados, lo que significa que los cambios en los objetos anidados no afectarán a la copia original. Esto es útil cuando se desea tener una copia independiente de un objeto y sus datos.

        //Copia por asignación es simplemente asignar una referencia a un objeto existente a otra variable, lo que significa que ambas variables apuntan al mismo objeto en memoria y cualquier cambio en uno de ellos afectará al otro.

        int[] a = {1,2,3,4};
        int[] b = a; // Copia por asignación


        System.out.println("\n");
        System.out.print("A: ");
        for (int i = 0; i < a.length; i++) System.out.print(a[i]+", ");
        System.out.println("\n");
        System.out.print("B: ");
        for (int i = 0; i < b.length; i++) System.out.print(b[i]+", ");
        System.out.println("\n");

        System.out.println("Asignación de b[0] = 99");
        b[0] = 99;
        System.out.print("A: ");
        for (int i = 0; i < a.length; i++) System.out.print(a[i]+", ");
        System.out.println("\n");

        System.out.println(".clone() de b");
        int[] c = b.clone();
        System.out.print("C: ");
        for (int i = 0; i < c.length; i++) System.out.print(c[i]+", ");
        System.out.println("\nLuego c[0] = 100");
        c[0] = 100;
        System.out.print("B: ");
        for (int i = 0; i < b.length; i++) System.out.print(b[i]+", ");
        System.out.println("\n");

        System.out.println("Dada la lista P: ");
        ArrayList<ArrayList<Integer>> p = new ArrayList<>();
        p.add(new ArrayList<>(Arrays.asList(1, 2)));
        p.add(new ArrayList<>(Arrays.asList(4, 5)));
        p.add(new ArrayList<>(Arrays.asList(7, 9)));
        System.out.println(p);

        System.out.println("Shallow Copy de P");
        ArrayList<Integer> q = (ArrayList<Integer>) p.clone();
        System.out.println(q);

    }
}
