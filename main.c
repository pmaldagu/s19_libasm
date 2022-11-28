/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmaldagu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/15 12:02:10 by pmaldagu          #+#    #+#             */
/*   Updated: 2020/06/17 12:04:31 by pmaldagu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
	char dest[40];
	//char *str = "cocou";
	//char *str2 = "sal";

	bzero(dest, 40);
	printf("==========TEST==========\n");
	//printf("result = %zu\n", ft_strlen(NULL));
	//printf("result = %d\n", ft_strcmp("coucou", "coudou"));
	//printf("strcmp = %d\n", strcmp("coucou", "coudou"));
	//printf("strcpy = %s\n", strcpy(dest, "sf"));
	//printf("result = %s\n", ft_strcpy(dest, "sifasafasfsa"));
	//printf("ft_strdup = %s\n", ft_strdup("coucccccc"));
	//printf("%lu\n", strlen(ft_strdup("couc")));
	printf("%zu\n", ft_write(4, "aabxbc", 1));
	printf("%zu\n", write(4, "aabxbac", 1));
	printf("===========END==========\n");

	int    fd;
	char    buffer[40];
	int    i = 0;

	while(i < 40)
	{
		buffer[i] = 0;
		i++;
	}
	fd = open("./test.txt",    O_RDWR);
	printf("%zd\n",ft_read(fd, buffer, 39));
	printf("buffer||%s\n", buffer);

	return (0);
}
