SRC = ft_strlen.s \
      ft_strcmp.s \
      ft_strcpy.s \
      ft_strdup.s \
      ft_write.s \
      ft_read.s

OBJS = $(SRC:.s=.o)

NASM = nasm

NFLAG = -f macho64

CC = gcc

CFLAG = -Wall -Wextra -Werror

NAME = libasm.a

%.o: %.s
	$(NASM) $(NFLAG) $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: all
	$(CC) -I./ $(CFLAG) $(NAME) main.c
	@./a.out
	@rm -rf a.out

ctest: fclean
	rm -rf a.out

.PHONY: all test clean fclean re ctest
