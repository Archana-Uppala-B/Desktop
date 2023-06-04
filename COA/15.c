#include <stdio.h>

int main()
{
	int n;
	int i,j;
	printf("enter n");
	scanf("%d",&n);
	int a[n];
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	
	int count=0;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
		     if(a[i]==a[j] && i!=j)
		     {
		     	break;
		     }
		     	
		}
		if(j==n)
			 {
			 	count++;
			 }
	}
	printf("The unique ele are:%d",count);
	return ;
}
