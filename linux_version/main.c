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

#include "./include/libasm.h"

int main()
{
	char dest[40];
	//char *str = "cocou";
	//char *str2 = "sal";

	bzero(dest, 40);
	printf("==========TEST==========\n\n");
	/*ft_strlen*/
	printf("ft_strlen = %zu\n", ft_strlen("couc"));
	printf("strlen = %zu\n\n", strlen("couc"));
	/*ft_strcmp*/
	printf("ft_strcmp = %d\n", ft_strcmp("coucou", "coudou"));
	printf("strcmp = %d\n\n", strcmp("coucou", "coudou"));
	/*ft_strcpy*/
	printf("ft_strcpy = %s\n", ft_strcpy(dest, "sf"));
	printf("strcpy = %s\n\n", ft_strcpy(dest, "sifasafasfsa"));
	/*ft_strdup*/
	printf("ft_strdup = %s\n", ft_strdup("couc"));
	printf("strdup = %s\n\n", strdup("couc"));
	/*ft_write*/
	printf("%zu\n", ft_write(1, "aabxbc", 4));
	printf("%zu\n\n", write(1, "aabxbac", 4));
	printf("===========END==========\n");

	int		fd;
	char	buffer[40];
	int		i = 0;

	while(i < 40)
	{
		buffer[i] = 0;
		i++;
	}
	fd = open("./test.txt", O_RDONLY);
	printf("%zd\n",ft_read(fd, buffer, 39));
	printf("buffer|%s\n", buffer);

	return (0);
}
