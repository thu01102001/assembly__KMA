- MOV AH, 1 : đọc ký tự từ bàn phím
- MOV AH, 2: Xuất ký tự
- MOV AH, 10: == scanf
- Sub dl, 1: Ký tự trước (-)
- Add dl, 1 : Ký tu sau (+)
- MOV AH, 4Ch: Thoát khỏi chương tình
- Lea dx, str... : Yêu cầu nhập , xuất (db)
- str db 100 dup("$"): khởi tạo biến str với độ dài 100 và chưa gán giá trị
- MOV AH, 9: Hiện lên xâu ký tự kết thúc bởi $
- lea dx, str + 2 : Đưa dx về phần tử thứ 2 của mảng là ký tự đầu tiên được nhập vào
- JE: Nhảy nếu bằng
- Jmp: là lệnh chuyển điều khiển không điều kiện
- Inc : Tăng giá trị lên 1
- Dec : giame giá trị đi 1
- cmp: so sánh giá trị / nội dung của toán hạng đichs / toán hạng nguồn