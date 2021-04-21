import java.util.*;
import java.io.File;
public class VKR 
{
public static void main(String[] args) 
{
Scanner sc = new Scanner(System.in);
char itt='y', itt2='y' ;
System.out.println("**************************************\n");
System.out.println("       Welcome to LockedMe.com \n     ");
System.out.println("   Developer Name : SHRISHTY GUPTA \n");
System.out.println("**************************************\n");     
while(itt=='y') 
{	itt2='y';
	System.out.println("\n*********MAIN MENU*********\n");
	System.out.println("1. Display File Names\n"+
	"2. Other Options\n"+
	"3. Exit");
	System.out.println("Enter your choice:\t");
    String  options =  sc.nextLine();        	
    switch (options)
    {
    case "1":
            System.out.println("Enter the path in which you want to sort and show the files : ");
       		String pathdir = sc.nextLine();
       		File file = new File(pathdir);
       	
            try
           {
	String[] fileList = file.list();
            ArrayList<String> arrlist = new ArrayList<String>();
            for(String str : fileList) 
            {
            	arrlist.add(str);
            }
            System.out.println("Files in sorted order are :");
            Collections.sort(arrlist);
            for(String str : fileList) 
            {
               System.out.println(str);
         	}}
catch(Exception e)
{ System.out.println("Wrong pathname entered! Choose again! ");
}
            break;
    case "2":
             while(itt2=='y')
             {
            	 System.out.println("\n******SUB MENU********\n"+
            		 "2a. Add a file\n"+
            		 "2b. Delete a file\n"+
            		 "2c. Search a file\n"+
            		 "2d. Go to Main Menu");
            	 System.out.println("Choose anyone from 2a, 2b, 2c and 2d : ");
            	 String choice2=sc.nextLine();
            	 String path;
            	 switch(choice2)
            	 { 
            	 	case "2a":
            	 		System.out.println("Enter the directory where you want to add the file : ");
            	 		String dir=sc.nextLine();
            	 		System.out.println("Enter the file.extension which you want to Add : ");
            	 		path=sc.nextLine();
            	 		try 
            	 		{
            	 			File myObj = new File(dir, path);
            	 			if (myObj.exists())
            	 			{
            	 				System.out.println("File already exists. So, cannot create another file of same name. Choose again! ");
            	 			}
            	 			else if (myObj.createNewFile()) 
            	 			{
            	 				System.out.println("File created: " + myObj.getName());
            	 			} 
            	 		}
            	 		catch (Exception e) 
            	 		{
            	 			System.out.println("Wrong directory path entered. Choose again and enter valid path");
            	 			
            	 		}
            	 		break;
            	 	case "2b":
            	 		System.out.println("Enter the directory where you want to add the file : ");
            	 		String dirr=sc.nextLine();
            	 		System.out.println("Enter the filename.extension which you want to delete : ");
            	 		String pathh=sc.nextLine();
            	 		try {
            	 			File f=null;
            	 			f=new File(dirr,pathh);
            	 			if(f.exists())
            	 			{
            	 				boolean b=f.delete();
            	 				System.out.println("File deleted " );
            	 			}
            	 			else
            	 				System.out.println("File doesn't exist " );	 
            	 			}
            	 		catch (Exception e) 
            	 		{
            	 			System.out.println("Wrong path name or file name entered! Choose again! ");
            	 		}
            	 		break;
            	 	case "2c":
            	 		
            	 		System.out.println("Enter the directory path in which you want to search : ");
            	 		String pathdirr = sc.nextLine();
                                                     try{
            	 		File filee = new File(pathdirr);
            	 		String[] fileListt = filee.list();
            	 		if(fileListt==null)
            	 		{System.out.println("Empty directory or wrong directory!\n");}
            	 		else {
            	 			ArrayList<String> arrrlist = new ArrayList<String>();
            	 			for(String str : fileListt) 
            	 			{
            	 				arrrlist.add(str);
            	 			}
            	 			System.out.println("Enter the file you need to search:\t");
            	 			String search=sc.nextLine();
            	 			boolean ans = arrrlist.contains(search);
            	 			if (ans) 
            	 				System.out.println("The directory contains "+ search); 
            	 			else
            	 				System.out.println("The directory does not contains " + search);}}
catch(Exception e)
{System.out.println("Wrong file name or directory path entered! Choose again!");}
            	 			break;
            	 	case "2d":   
            	 		itt2='x';  
            	 		break;
            	 	default :
            	 		System.out.println("You have made an invalid choice, Make a valid choice!");
            	 }
            }
            break;
    
    case "3":
                try{ System.out.println("Sure you want to close the Application? If yes enter 3 again else press any other number: ");
                int sure=sc.nextInt();

               if(sure==3)
{
          	System.out.println("Closing your application... \nThank you!");
   	        System.exit(0);
}
else
           { System.out.println("As you are unsure of your choice! Choose again!");
break;}}
catch(Exception e)
{System.out.println("Enter a numeral value only! Choose again"); break;}
    default : 
            System.out.println("You have made an Invalid choice, Make a valid choice!");
            
    }            
  
}            
sc.close();
}
}    