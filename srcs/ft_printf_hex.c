#include "../includes/ft_printf.h"

void ft_putnbr_hex(unsigned int n, const char format)
{
        char c;
        unsigned int num;
        const char *hex;
	int len;

	hex = "0123456789abcdef";

        if (n < 0)
        {
                write(1, "-", 1);
                num = (-n);
        }
        else
                num = n;
        if (num >= 16)
                ft_putnbr_fd(num / 16, fd;
        c = hex[num % 16];
        write(fd, &c, 1);
}

