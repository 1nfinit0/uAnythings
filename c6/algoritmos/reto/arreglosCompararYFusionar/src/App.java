public class App {
	public static void main(String[] args) throws Exception {
	int[] id1 = {100, 101, 102, 103};
	int[] id2 = id1;
	int[] id3 = {100, 101, 102, 103};

	if (id1 == id2) {
		System.out.println("Son iguales");
	} else {
		System.out.println("No son iguales");
	}
	}

	public static void Fusionar(int[] a, int[] b){
		int[] merge = new int[a.length + b.length];
		System.arraycopy(a, 0, merge, 0, a.length);
		System.arraycopy(b, 0, merge, a.length, b.length);
		System.out.println(merge);
	}

	Fusionar(id1, id3);
}
