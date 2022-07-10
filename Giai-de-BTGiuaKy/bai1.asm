.model small
.stack 100h
.data
    strNhap1 db 10,13, "Nhap vao ma sinh vien : $"
    strNhap2 db 10, 13, "Nhap vap ten sinh vien : $"
    strXuat1 db 10,13, "Ma sinh vien: $" 
    strXuat2 db 10,13, "Ten sinh vien: $"
    str1 db 100 dup("$")
    str2 db 100 dup("$")
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, strNhap1
        mov ah, 9
        int 21h
        
        lea dx, str1
        mov ah, 10
        int 21h
            
        
        lea dx, strNhap2
        mov ah, 9
        int 21h
        
        lea dx, str2
        mov ah, 10
        int 21h      
        
        lea dx, strXuat1
        mov ah, 9
        int 21h
        lea dx, [str1 + 2]
        int 21h
        
        lea dx, strXuat2
        mov ah, 9
        int 21h
        lea dx, [str2 + 2]
        int 21h
                      
        mov ah, 4CH
        int 21h
    main endp
end    
        