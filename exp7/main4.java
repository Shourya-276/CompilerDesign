import java.util.*;
public class Add
{
	public static void main(String[] args)
	{
		int a,b,c;
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter first Number");
		a = sc.nextInt();
		
		System.out.println("Enter second Number");
		b = sc.nextInt();
		
		c = a + b;
		System.out.println("The Addition is: " + c);

		sc.close();
	}
}