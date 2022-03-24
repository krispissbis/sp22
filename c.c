#include <stdio.h>

int main()
{
	short array[10] = {5, 45, 36, 4, 57, 13, 7, 44, 68, 10};

	for (int i = 0; i < 10; i++)
	{
		if (i%2==1)
			array[i] = array[i]^255;
		printf("%d ", array[i]);
	}
	printf("\n");

	return 0;
}
