#include <stdio.h>
#include <strings.h>

int main()
{
    //character array of length 100
    char str[100];
    printf("Enter a string:");
    gets(str);
    puts(str);
    int i,j;
    for(i=0;i<strlen(str);i++)
    {
    	int count=0;
    	for(j=0;j<strlen(str);j++)
    	{
    		if(str[i]==str[j])
    		{
    	     	count++;
    		}
		}
		printf("count  of %c is %d\n",str[i],count);
	}
	
}
