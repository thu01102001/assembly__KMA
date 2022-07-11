.model small
.stack 100
.data
    tbNhapChuoiSo db 13, 10, "Nhap chuoi so(vd: '12,23,44'): $"    
    tbKqTong db 13, 10, "So luong so chia het cho 8: $"
    str db 100 dup("$")
    dem dw ?
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, tbNhapChuoiSo  
        mov ah, 9
        int 21h
         
        lea dx, str
        mov ah, 10
        int 21h
        
        lea dx, tbKqTong
        mov ah, 9
        int 21h
        
        mov cx, 0
        mov cl, [str + 1]
        lea si, [str + 2]
        mov bx, 10
        mov ax, 0
        mov dem, 0   ;khoi tao dem = 0  
        
        loop1:
        mov dx, [si] ; dua tng phan tu si vao dx
        cmp dl, ","   ; so sanh voi ,
        je next1      ; neu bang chuyen sang ham next1
        mul bx
        mov dx, [si]
        mov dh, 0
        sub dl, 48
        add ax, dx
        jmp next2     ; nhay den ham next2 de tang si va thuc hien lap lai
        
        next1:
        mov dx, 0
        mov bx, 8     ; gan bx = 8
        div bx        ; chia cho bx (chia 8)
        cmp dx, 0     ; so sanh voi 0 
        je tangDem    ; neu bang nhay den ham tangdem
        jmp next3     ; neu khong bang nhay den ham next3
        tangDem:
        inc dem       ; ham tang dem => Tang len 1 don vi
        
        next2:
        inc si
        loop loop1
        
        next3:
        mov bx, 10
        mov ax, 0 
        
        mov dx, 0
        mov bx, 8
        div bx 
        cmp dx, 0
        je tangDemv1        
        jmp next4
        tangDemv1:
        inc dem
        
        next4:
        mov ax, dem
        call chuyenSoThanhChu
        
        mov ah, 4ch
        int 21h
    main endp
    
    chuyenSoThanhChu proc
        mov bx, 10
        mov cx, 0
        chia10:
        mov dx, 0
        div bx
        push dx
        inc cl
        cmp ax, 0
        je hienthi
        jmp chia10
        hienthi:
        pop dx
        add dl, 48
        mov ah, 2
        int 21h
        loop hienthi
        ret
    chuyenSoThanhChu endp
end              
