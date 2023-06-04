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
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			if((a[i]-a[j])==15)
			{
				printf("%d %d\n",a[i],a[j]);
			}
		}
	}
	return 0;
}
