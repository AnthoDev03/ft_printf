NAME = libftprintf.a
LIBFT = libft/libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

# List of ft_printf source files
FT_PRINTF_SRCS = ft_printf.c \
                 parse_format.c \
                 handle_specifier.c \
                 handle_char.c \
                 handle_string.c \
                 handle_pointer.c \
                 handle_int.c \
                 handle_uint.c \
                 handle_hex.c \
                 handle_percent.c

# List of libft source files
LIBFT_SRCS = libft/ft_putchar_fd.c \
             libft/ft_putstr_fd.c \
             libft/ft_strlen.c \
             libft/ft_putnbr_fd.c \
             libft/ft_putnbr_unsigned_fd.c \
             libft/ft_putnbr_hex.c \
             libft/ft_nbrlen.c \
             libft/ft_nbrlen_unsigned.c \
             libft/ft_nbrlen_hex.c

FT_PRINTF_OBJS = $(FT_PRINTF_SRCS:.c=.o)
LIBFT_OBJS = $(LIBFT_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(FT_PRINTF_OBJS) $(LIBFT)
	ar rcs $(NAME) $(FT_PRINTF_OBJS) $(LIBFT_OBJS)

$(LIBFT): $(LIBFT_OBJS)
	$(MAKE) -C libft

clean:
	$(RM) $(FT_PRINTF_OBJS)
	$(MAKE) -C libft clean

fclean: clean
	$(RM) $(NAME)
	$(MAKE) -C libft fclean

re: fclean all

.PHONY: all clean fclean re

