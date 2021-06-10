##
## EPITECH PROJECT, 2019
## ASM_minilibc_2018
## File description:
## Makefile
##

NAME =		libasm.so

LD =		ld -fpic -shared

RM =		rm -f

SRC	=		./src/strlen.s 	\
			./src/strcmp.s 	\
			./src/strncmp.s	\
			./src/strchr.s 	\
			./src/memset.s 	\
			./src/memcpy.s

OBJS =		$(SRC:.s=.o)

all:		$(NAME)

$(NAME):	$(OBJS)
		$(LD) $(LDFLAG) $(OBJS) -o $(NAME)

.s.o:
		nasm -f elf64 $< -o $@

clean:
		$(RM) $(OBJS)

fclean: clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
