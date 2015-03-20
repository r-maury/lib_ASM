# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmaury <rmaury@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/22 17:47:23 by rmaury            #+#    #+#              #
#    Updated: 2015/03/20 18:04:15 by rmaury           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NASMFLAGS = -f macho64
CCFLAGS = -Wall -Werror -Wextra
NC = nasm

SRC += ft_bzero.s
SRC += ft_strcat.s
SRC += ft_isalpha.s
SRC += ft_isdigit.s
SRC += ft_isalnum.s
SRC += ft_isascii.s
SRC += ft_isprint.s
SRC += ft_toupper.s
SRC += ft_tolower.s
SRC += ft_puts.s
SRC += ft_strlen.s
SRC += ft_memset.s
SRC += ft_memcpy.s
SRC += ft_strdup.s
SRC += ft_cat.s
SRC += ft_isblank.s
SRC += ft_isspace.s
SRC += ft_putstr.s
SRC += ft_strclr.s
SRC += ft_strnew.s

SRCS = $(addprefix $(SRCDIR)/, $(SRC))
OBJS = $(SRC:.s=.o)
INCS = $(addprefix -I , $(INCDIR))

all: $(NAME)
$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "Compilation Over"
run:
	@gcc $(CCFLAGS) $(NAME) main.c
	@./a.out
noflagr: re
	@gcc $(NAME) main.c
	@./a.out
clean:
	@rm -f $(OBJS)
fclean: clean
	@rm -f $(NAME)
	@rm -rf obj
re: fclean all

dev : all
	@./$(NAME)

.PHONY: clean fclean all

%.o:%.s
	@$(NC) $(NASMFLAGS) $<