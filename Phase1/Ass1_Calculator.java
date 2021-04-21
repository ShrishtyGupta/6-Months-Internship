import java.util.Scanner;
public class Ass1_Calculator
{

	public static void main(String[] args) 
	{
		System.out.println("***WELCOME TO SHRISHTY'S CALCULATOR***");
		char cont='y';
		Scanner sc= new Scanner(System.in);
		while(cont=='y' || cont =='Y')
		{
			System.out.println("\nWhich operation do you want to perform?\n 1. Addition \n 2. Subtraction\n 
			3. Multiplication\n 4. Division(Answer with Quotient and Remainder)\n 5. Division(Answer in Decimals)\n");
			System.out.println("Enter your choice : ");
			int choice=sc.nextInt(); //xx
			if (choice == 1 || choice ==2 || choice ==3 || choice ==4 || choice ==5)
			{
				System.out.println("Enter Number 1 : ");
				int n1=sc.nextInt();
				System.out.println("Enter Number 2 : ");
				int n2=sc.nextInt();
				switch(choice)
				{
					case 1: System.out.println("Sum is : " + (n1+n2)); break;
					case 2: System.out.println("Difference is : " + (n1-n2)); break;
					case 3:System.out.println("Product is : " + n1*n2); break;
					case 4: System.out.println("Quotient is : "+(n1/n2)+"\n" +"Remainder is : " + (n1%n2));
					break;
					case 5:	float div=(float)n1/(float)n2; 
					System.out.println("Answer is : " +div); break;
				}
			}
			else
			{ 
				System.out.println("Wrong choice of operation input !\n");
			}
		
			System.out.println("Do you want to make another calculation? Press Y  or N : ");
			cont=sc.next().charAt(0);
			while( cont !='y' && cont!='Y' && cont!='n' && cont!='N')
			{
				System.out.println("Enter valid choice, y or n : ");
				cont=sc.next().charAt(0);
			}
			
		}
		    System.out.println("THANK YOU FOR USING MY CALCULATOR!");
			sc.close();	
	}
}
	
	

