# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lucaslefrancq <lucaslefrancq@student.42    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/05 18:41:15 by llefranc          #+#    #+#              #
#    Updated: 2020/11/25 11:24:51 by lucaslefran      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a
CC			=	gcc
FLAGS		=	-Wall -Wextra -Werror

LB_SRCS		=	ft_atoi.c ft_calloc.c ft_isalpha.c ft_isdigit.c ft_pow.c \
				ft_memccpy.c ft_memcmp.c ft_memmove.c ft_strchr.c \
				ft_strlcat.c ft_strlen.c ft_strnstr.c ft_tolower.c \
				ft_bzero.c ft_isalnum.c ft_isascii.c ft_isprint.c \
				ft_memchr.c ft_memcpy.c ft_memset.c ft_strdup.c \
				ft_strlcpy.c ft_strncmp.c ft_strrchr.c ft_toupper.c \
				ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
				ft_itoa.c ft_itoa_base.c ft_itoa_buffer.c ft_itoa_buffer_uns.c \
				ft_itoa_base_buffer_uns.c ft_strmapi.c ft_putchar_fd.c \
				ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strcmp.c \
				ft_convert_base.c ft_convert_base2.c ft_replace_char.c

LB_OBJS		=	$(LB_SRCS:.c=.o)

INC_PATH	=	includes/

LB_PATH		=	srcs_libft/

all		: 	$(NAME)

bonus	:	$(NAME)

$(NAME)	:	$(addprefix $(LB_PATH), $(LB_OBJS))
			ar rc $(NAME) $(addprefix $(LB_PATH), $(LB_OBJS))
			ranlib $(NAME)

clean	:	
				rm -rf $(addprefix $(LB_PATH), $(LB_OBJS))

fclean	:	clean
				rm -rf $(NAME)

re		:	fclean all

.PHONY	:	all clean fclean re

#compiling .o with flags
$(LB_PATH)%.o		:	$(LB_PATH)%.c
			$(CC) $(FLAGS) -o $@ -c $<
