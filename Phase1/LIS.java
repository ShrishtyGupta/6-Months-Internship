package HackerEarthMain;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Iterator;
public class HackerEarthMain 
{ 
public static void main(String[] args)
{
	int n;
	System.out.println("Enter length of array : ");
	Scanner sc = new Scanner(System.in);
	n=sc.nextInt();
	System.out.println("Enter elements in the array : ");
	int[] arr = new int[n]; 
	for(int i=0;i<n;i++)
	{
	  	arr[i]=sc.nextInt();
	}
    ArrayList list = new ArrayList();
    ArrayList longestList = new ArrayList();
    int currentMax;
    int highestCount = 0;
    for(int i = 0; i < n;i++)
    {
    	currentMax = Integer.MIN_VALUE;
        for(int j = i;j < n; j++)
        {
        	if(arr[j] > currentMax)
            {
                  list.add(arr[j]);
                  currentMax = arr[j];
              }
          }
           
          //Compare previous highest subsequence 
          if(highestCount < list.size())
          {
              highestCount = list.size();
              longestList = new ArrayList(list);  
          }   
          list.clear();
      }
     
       
      //Print list
      Iterator itr = longestList.iterator();
      System.out.println("The Longest subsequence is : ");
      while(itr.hasNext())
      {
          System.out.print(itr.next() + " ");
      }
      System.out.println();
      System.out.println("Length of LIS: " + highestCount);
  }
}