package PP5;
import java.util.*;
import java.util.ArrayList;
import java.util.Scanner;

public class PP5 {
	
	 public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
	        char itt='y';
	        System.out.println("\n**************************************\n");
	        System.out.println("\tWelcome to TheDesk \n");
	        System.out.println("**************************************");
	        ArrayList<Integer> arrlist = new ArrayList<Integer>();
	        ArrayList<Integer> expenses = new ArrayList<Integer>();
	        expenses.add(1000);
	        expenses.add(2300);
	        expenses.add(45000);
	        expenses.add(32000);
	        expenses.add(110);
	        expenses.addAll(arrlist);
	        
	        String[] arr = {"1. I wish to review my expenditure",
	                "2. I wish to add my expenditure",
	                "3. I wish to delete my expenditure",
	                "4. I wish to sort the expenditures",
	                "5. I wish to search for a particular expenditure",
	                "6. Close the application"
	        };
	        
	        int[] arr1 = {1,2,3,4,5,6};
	        int  slen = arr1.length;
	        while(itt=='y') {
	        	
		        for(int i=0; i<slen;i++){
		            System.out.println(arr[i]);}
		        System.out.println("\nEnter your choice:\t");
	        int  options =  sc.nextInt();
	            if(options==1 || options==2 || options==3 || options==4 || options==5 || options==6 ){
	            	
	                switch (options){
	                    case 1:
	                        System.out.println("Your saved expenses are listed below: \n");
	                        System.out.println(expenses+"\n");
	                        
	                        break;
	                    case 2:
	                        System.out.println("Enter the value to add your Expense: \n");
	                        int value = sc.nextInt();
	                        expenses.add(value);
	                        System.out.println("Your value is updated\n");
	                        expenses.addAll(arrlist);
	                        System.out.println(expenses+"\n");
	                     

	                        break;
	                    case 3:
	                        System.out.println("You are about the delete all your expenses! \nConfirm again by selecting the same option...\n");
	                        int con_choice = sc.nextInt();
	                        if(con_choice==options){
	                               expenses.clear();
	                            System.out.println(expenses+"\n");
	                            System.out.println("All your expenses are erased!\n");
	                        } else {
	                            System.out.println("Oops... try again!");
	                        }
	                       
	                        break;
	                    case 4:
	                    	Collections.sort(expenses);
	                    	System.out.println(expenses+"\n");
	                        break;
	                    case 5:
	                    	
	            	        System.out.println("Enter the expense you need to search:\t");
	            	        int search=sc.nextInt();
	            	        boolean ans = expenses.contains(search);
	            	        if (ans) 
	            	            System.out.println("The list contains "+ search); 
	            	        else
	            	            System.out.println("The list does not contains " + search);
	                        
	                        break;
	                    case 6:
	                    	System.out.println("Closing your application... \nThank you!");
	            	        System.exit(0);
	                        break;
	                    default:
	                        System.out.println("You have made an invalid choice! Make a valid choice ");
	                        break;
	                } itt='y';                
	            }}
	        sc.close();
	    } }    