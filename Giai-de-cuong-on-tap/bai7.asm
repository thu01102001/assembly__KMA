.model small
.stack 100h
.data
    strNhap db 10,13, "Nhap vao ma sinh vien cua ban: $"
    strKq db 10,13, "Ma sinh vien la: $" 
    strNhapChuoi db 10,13, "Nhap vao 1 chuoi bat ki: $"
    strKqChuoi db 10,13, "Ket qua: $"
    strXuat db 10,13, "Ten cua ban la: Nguyen Thi Le Thu $"
    str db 100 dup("$")             
    strMsv db 100 dup("$")
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
        mov ah, 9
        int 21h       
        
        ;doi tat ca cac ky tu in thuong thanh in hoa trong
        ;chuoi ky tu nhap vao tu ban phim'
        
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
        hienthi:
        mov dx, [si]
        cmp dl, "a"
        jl next     ;nhay neu nho hon
        cmp dl, "z"
        ja next     ;nhay neu lon hon hay bang
        sub dl, 20h ;ham de chuyen sang chu hoa
        next:
        mov ah, 2
        int 21h
        inc si    ;tang si len 1
        
        loop hienthi:
        
        mov ah, 4CH
        int 21h
    main endp
end    
        