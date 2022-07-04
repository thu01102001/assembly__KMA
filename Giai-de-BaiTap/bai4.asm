.model small
.stack 100h
.data
    strNhap db 10,13, "Nhap ten cua ban: $"
    strXuat db 10,13, "Xin chao $"        
    str db 100 dup("$")     
.code 
    main proc 
        mov ax, @data
        mov ds, ax
        
        lea dx, strNhap
        mov ah, 9
        int 21h
        
        lea dx, str
        mov ah, 10
        int 21h
        
        lea dx, strXuat
        mov ah, 9
        int 21h
        
        lea dx, str + 2
        int 21h
        
        mov ah, 4CH
        int 21h
        
    main endp
end
    