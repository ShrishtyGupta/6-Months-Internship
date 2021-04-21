package EmailValidate;
import java.util.Scanner;
import java.util.regex.Matcher; 
import java.util.regex.Pattern; 
public class EmailValidate 
{
    public static void main(String[] args) 
    {  
    	Scanner sc =new Scanner(System.in);
    	String emailRegex = 
        		"^[0-9A-Za-z_+&*-]+(?:\\."+ "[0-9A-Za-z_+&*-]+)*@" + 
    	         "(?:[0-9A-Za-z-]+\\.)+[a-z" + "A-Z]{2,7}$";
    	System.out.println("Enter email ID : ");
    	String email = sc.nextLine();     
    	Pattern pat = Pattern.compile(emailRegex); 
    	if (pat.matcher(email).matches()) 
    		System.out.println("Yes\n"); 
    	else
    		System.out.println("No\n");
    	sc.close();
    } 
}