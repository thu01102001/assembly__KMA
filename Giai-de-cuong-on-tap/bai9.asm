.model small
.stack 100h
.data 
    strNhap db 10,13, "Nhap ma sinh vien: $"
    strKq db 10,13, "Ma sinh vien: $"
    strNhapChuoi db 10,13, "Nhap vao 1 chuoi: $"
    strKqChuoi db 10,13, "Ket qua: $"
    strXuat db 10,13, "Ten cua ban: Nguyen Thi Le Thu $"
    strMsv db 100 dup("$")
    str db 100 dup("$")
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, strNhap 
        mov ah, 9
        int 21h
        
        lea dx, strMsv
        mov ah, 10
        int 21h
        
        lea dx, strKq
        mov ah, 9
        int 21h
        
        lea dx, [strMsv + 2]
        mov ah, 9
        int 21h
        
        lea dx, strXuat
        mov ah,, 9
        int 21h
        
        ;dao nguoi chuoi ky tu vua nhap vao tu ban phim
        lea dx, strNhapChuoi
        mov ah, 9
        int 21h 
        
        lea dx, str
        mov ah, 10
        int 21h 
        
        lea dx, strKqChuoi
        mov ah, 9
        int 21h            
                    
        mov cx, 0
        mov cl, [str + 1]
        lea si, [str + 2]
        pushNganXep:   
        mov dx, [si]
        push dx
        inc si
        loop pushNganXep
        
        mov cx, 0
        mov cl, [str + 1]
        mov ah, 2   
        hienthi:
        pop dx
        int 21h   
        loop hienthi 
        
        mov ah, 4CH
        int 21h
    main endp
end    