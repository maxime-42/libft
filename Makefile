CC	= gcc

RM	= rm -f

NAME	= libft.a

MANDATORY = 	./ft_memset.c\
				./ft_bzero.c\
				./ft_memcpy.c\
				./ft_memccpy.c\
				./ft_memchr.c\
				./ft_memcmp.c\
				./ft_memmove.c\
				./ft_strlen.c\
				./ft_isalpha.c\
				./ft_isdigit.c\
				./ft_isalnum.c\
				./ft_strnstr.c\
				./ft_strncmp.c\
				./ft_strlcpy.c\
				./ft_strlcat.c\
				./ft_atoi.c\
				./ft_strdup.c\
				./ft_calloc.c\
				./ft_substr.c\
				./ft_strjoin.c\
				./ft_strtrim.c\
				./ft_split.c\
				./ft_itoa.c\
				./ft_putchar_fd.c\
				./ft_putstr_fd.c\
				./ft_putendl_fd.c\
				./ft_putnbr_fd.c\
				./ft_strchr.c\
				./ft_strrchr.c\
				./ft_isascii.c\
				./ft_isprint.c\
				./ft_strmapi.c\
				./ft_toupper.c\
				./ft_tolower.c\

BONUS	= 	./ft_lstnew_bonus.c\
			./ft_lstadd_front_bonus.c\
			./ft_lstsize_bonus.c\
			./ft_lstlast_bonus.c\
			./ft_lstadd_back_bonus.c\
			./ft_lstdelone_bonus.c\
			./ft_lstclear_bonus.c\
			./ft_lstiter_bonus.c\
			./ft_lstmap_bonus.c\

MANDATORY_SRCS	=	${MANDATORY}

BONUS_SRCS	=	${BONUS}

MANDATORY_OBJS	= ${MANDATORY_SRCS:.c=.o}

BONUS_OBJS	= ${BONUS_SRCS:.c=.o}

CFLAGS	= -g -Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${MANDATORY_OBJS}
			ar rc ${NAME} ${MANDATORY_OBJS}
			ranlib ${NAME}

all: ${NAME}

bonus:	${BONUS_OBJS} ${NAME}
			ar rc ${NAME} ${MANDATORY_OBJS} ${BONUS_OBJS}
			ranlib ${NAME}
clean:
	${RM} ${BONUS_OBJS} ${MANDATORY_OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
