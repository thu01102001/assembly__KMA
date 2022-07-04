.model small
.stack 100h
.data 
    strNhap db 10,13, "Hay go 1 phim: $"
    strXuat db 10,13, "Ky tu nhan duoc la: $"
    kytu db ?
.code
    main proc 
        mov ax, @data
        mov ds, ax
        
        ;yeu cau nhap
        lea dx, strNhap
        mov ah, 9
        int 21h
        
        ;doc ky tu tu ban phim
        mov ah, 1
        int 21h       
        
        mov kytu, al
                    
        ;yeu cau xuat            
        lea dx, strXuat
        mov ah, 9
        int 21h 
        
        mov dl, kytu
        mov ah, 2
        int 21h
        
        ; thoat chuong trinh
        mov ah, 4CH
        int 21h
    main endp
end
        