package FileHandling;
import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
public class FileHandling 
{
public static void main(String[] args) 
{
	Scanner sc =new Scanner(System.in);
	System.out.println("****** WELCOME TO SHRISHTY'S FILE HANDLER ********");
	System.out.println("Enter the operation which you want to perform \n 1. "+
    "Read from a file.\n 2. Write to a file.\n 3. Append to a file.\nEnter choice : ");
	String choicee=sc.nextLine();
	int choice=Integer.parseInt(choicee);
	System.out.println("Enter the file path with which you want to interact : ");
    String path=sc.nextLine();
    try 
    {
    	File myObj = new File(path);
    	if (myObj.exists())
    	{
    		System.out.println("File already exists. So, opened existing file.");
    	}
    	else if (myObj.createNewFile()) 
		{
			System.out.println("File created: " + myObj.getName());
		} 
    }
    catch (Exception e) 
    {
    	System.out.println("An error occurred.");
		e.printStackTrace();
    }
	switch(choice)
	{
	case 1: 
			try {
			    	File myObj = new File(path);
			    	Scanner myReader = new Scanner(myObj);
			    	if (myObj.length() == 0) 
			    	{
			    		System.out.println("File is empty!");
			    	}
			    	else
			    	{
			    		while (myReader.hasNextLine()) 
			    		{
			    			String data = myReader.nextLine();
			    			System.out.println(data);
			    		}
			    	}
			    	myReader.close();
			    } 
			catch (FileNotFoundException e) 
			{
				System.out.println("An error occurred.");
			    e.printStackTrace();
			}
			break;
		case 2: 
			System.out.println("Enter content you want to enter in a file : ");
			String content=sc.nextLine();
			try 
			{
				FileWriter myWriter = new FileWriter(path);
				myWriter.write(content);
				myWriter.close();
				System.out.println("Successfully wrote to the file.");
		    } 
			catch (Exception e) 
			{
				System.out.println("An error occurred.");
				e.printStackTrace();
		    }
			break;
		case 3:
			System.out.println("Enter content you want to enter in a file : ");
			String contents=sc.nextLine();
			try 
			{
	            FileWriter fw = new FileWriter(path, true);
	            fw.write(contents);
	            fw.close();
	        }
	        catch(Exception e) 
			{
	        	System.out.println("An error occurred.");
	        }
			break;
		}
		 sc.close();     
	}
}
