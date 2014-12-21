public class Explicit {
	public static void main(String[] args) {
		for(int i=0; i <=50 ; i++) {
			for(int j=0; j <=50; j++) {
				// System.out.println("addIndex(number(" + i + ",_),number(" + j + ",_),number(" + (i+j) + ",_)).");
				//System.out.println("add(" + i + "," + j + "," + (i+j) + ").");
				if(i>j) {
					continue;
				}
				// System.out.println("sub(" + j + "," + i + "," + (j-i) + ").");
			}
		}
	}
}