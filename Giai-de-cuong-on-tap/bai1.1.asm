.model small
.stack 100h
.data
    ;nhap vao ma sinh vien va hien thi dung ten cua minh
    strNhap db 10,13, "Nhap ma sinh vien cua ban: $"            
    strKq db 10, 13, "Ma sinh vien: $"
    strXuat db 10,13, "Nguyen Thi Le Thu $"            
    strNhap1 db 10,13, "Nhap n = $"
    strXuat1 db 10,13, "n! = $"
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
    main endp
end    