%include "boot.inc"

section loader vstart=LOADER_BASE_ADDR
loadermsg db "2 loader in real."

	mov byte [gs:0x00],'2'
	mov byte [gs:0x01],0xA4

	mov byte [gs:0x02],' '
	mov byte [gs:0x03],0xA4

	mov byte [gs:0x04],'L'
	mov byte [gs:0x05],0xA4

	mov byte [gs:0x06],'O'
	mov byte [gs:0x07],0xA4

	mov byte [gs:0x08],'A'
	mov byte [gs:0x09],0xA4

	mov byte [gs:0x0a],'D'
	mov byte [gs:0x0b],0xA4

	mov byte [gs:0x0c],'E'
	mov byte [gs:0x0d],0xA4	

	mov byte [gs:0x0e],'R'	
	mov byte [gs:0x0f],0xA4

	mov	 bp, loadermsg   ; ES:BP = 字符串地址
    mov	 cx, 17			 ; CX = 字符串长度
    mov	 ax, 0x1301		 ; AH = 13,  AL = 01h
    mov	 bx, 0x001f		 ; 页号为0(BH = 0) 蓝底粉红字(BL = 1fh)
    mov	 dx, 0x1800		 ;
    int	 0x10                    ; 10h 号中断
jmp $