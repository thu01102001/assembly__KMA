.model small
.stack 100h
.data
    strGM db 10,13, "Good morning! $"
    strGA db 10,13, "Good afternoon! $"
    strGE db 10,13, "Good evening! $"
    strNhap db 10,13, "Ban hay nhap (S,s,T,t,C,c>: $"     
    strNhapSai db 10,13, "Ban da nhap sai ky tu, vui long nhap lai! $"
    
.code 
    main proc
        mov ax, @data
        mov ds, ax                                                    
        
        nhap:
        lea dx, strNhap
        mov ah, 9
        int 21h
        
        mov ah,1
        int 21h
        
        cmp al, "S" 
        je chaoBuoiSang
        cmp al, "s"
        je chaoBuoiSang
        
        cmp al, "T"
        je chaoBuoiChieu
        cmp al, "t"
        je chaoBuoiChieu
        
        cmp al,"C"
        je chaoBuoiToi
        cmp al, "c"
        je chaoBuoiToi
        
        jmp nhapSai
        
        chaoBuoiSang:
        lea dx, strGM
        mov ah,9
        int 21h      
        jmp thoat
        
        chaoBuoiChieu:
        lea dx, strGA
        mov ah, 9
        int 21h
        jmp thoat
        
        chaoBuoiToi:  
        lea dx, strGE
        mov ah,9
        int 21h
        jmp thoat
        
        nhapSai:
        lea dx, strNhapSai
        mov ah,9
        int 21h
        jmp nhap
        
        thoat:
        mov ah, 4CH
        int 21h
    main endp
end