obj-m += tcp_tsunami.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) CONFIG_DEBUG_INFO_BTF_MODULES= modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
