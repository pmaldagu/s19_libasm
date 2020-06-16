/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmaldagu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/15 12:02:10 by pmaldagu          #+#    #+#             */
/*   Updated: 2020/06/16 14:13:01 by pmaldagu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
	//char *str = "cocou";
	//char *str2 = "sal";

	printf("==========TEST==========\n");
	printf("result = %zu\n", ft_strlen(NULL));
	printf("result = %d\n", ft_strcmp("coucou", "coudou"));
	printf("strcmp = %d\n", strcmp("coucou", "coudou"));
	//printf("result = %s\n", ft_strcpy("coucou", "salsal"));
	//printf("===========END==========\n");
	return (0);
}
