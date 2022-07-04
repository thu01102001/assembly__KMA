.model small
.stack 100h
.data
    strNhap db 10,13, "Hay go 1 phim: $"
    strKqT db 10,13, "Ky tu ke truoc: $"
    strKqS db 10,13, "Ky tu ke sau: $"
    kytu db ?
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, strNhap
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        
        mov kytu, al
        
        lea dx, strKqT
        mov ah, 9    
        int 21h
        
        mov dl, kytu
        sub dl, 1
        mov ah, 2
        int 21h
        
        lea dx, strKqS
        mov ah, 9
        int 21h
        
        mov dl, kytu
        add dl, 1
        mov ah, 2
        int 21h
        
        mov ah, 4CH
        int 21h
    main endp
end
        