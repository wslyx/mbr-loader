nasm mbr.asm -o mbr.bin
nasm loader.asm -o loader.bin
dd if=mbr.bin of=hdM60.img bs=512 count=1 seek=0 conv=notrunc
dd if=loader.bin of=hdM60.img bs=512 count=1 seek=2 conv=notrunc