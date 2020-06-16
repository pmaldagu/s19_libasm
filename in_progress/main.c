/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmaldagu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/15 12:02:10 by pmaldagu          #+#    #+#             */
/*   Updated: 2020/06/16 16:24:14 by pmaldagu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
	char dest[40];
	//char *str = "cocou";
	//char *str2 = "sal";

	bzero(dest, 40);
	//printf("==========TEST==========\n");
	//printf("result = %zu\n", ft_strlen(NULL));
	//printf("result = %d\n", ft_strcmp("coucou", "coudou"));
	//printf("strcmp = %d\n", strcmp("coucou", "coudou"));
	//printf("strcpy = %s\n", strcpy(dest, "sf"));
	printf("result = %s\n", ft_strcpy(dest, "sifasafasfsa"));
	printf("ft_strdup = %s\n", ft_strdup("couc"));
	printf("%lu\n", strlen(ft_strdup("couc")));
	ft_write(1, "a", 1);
	//printf("===========END==========\n");
	return (0);
}
