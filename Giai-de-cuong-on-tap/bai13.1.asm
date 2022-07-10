.model small
.stack 100h
.data
    strNhap db 10,13, "Nhap vao ten cua ban: $" 
    strKq db 10,13, "Ten cua ban la: $"
    strXuat db 10,13, "Ma sinh vien cua ban la: AT160447 $"
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
        
        lea dx, strKq
        mov ah, 9
        int 21h
        
        lea dx, [str + 2]
        mov ah, 9
        int 21h
        
        lea dx, strXuat
        mov ah, 9
        int 21h
        
        mov ah, 4CH
        int 21h   
    main endp
end    
    