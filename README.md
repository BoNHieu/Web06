# Web06

### Sự đóng góp của các thành viên
1.Nguyễn Văn Hiếu
2.Đào Quang Trung
3.Trần Ngọc Vinh
4.Giang Công Nguyên
5.Lưu Chí Kiên

### Giới thiệu trang web
Đây là dự án xây dựng và phát triển trang thương mại điện tử được xây dựng dựa trên ngôn ngữ java
Project có đầy đủ tính năng về phía người dùng cũng như phía Admin quản lý như là xem sản phẩm, tìm kiếm
sản phẩm, đặt hàng,...
Quản trị viên có thể quản lý Sản phẩm và các đơn đặt hàng

### Các môi trường cần cài đặt:
Để có thể chạy được trang web mua bán này cần:

*Cần phải có được Java JDK.Chúng tôi sử dụng [Java JDK 1.8]<https://oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html> khi phát triển chương trình này.

*Ứng dụng được chạy trên trình biên dịch [Netbean 8.2]<https://netbeans.org/downloads/8.2/> vì thế chúng tôi khuyến khích sử dụng nó để giúp cho website chạy ổn định nhất.

*Website sử dụng [JDBC]<https://www.microsoft.com/en-us/download/details.aspx?id=11774> để kết nối với SQL Server Database.
*Website sử dụng [jstl 1.2.1]<https://mvnrepository.com/artifact/org.glassfish.web/javax.servlet.jsp.jstl/1.2.1> để xem xử lý trên jsp page.

*Website chạy trên [Glassfish Server 4.1]<https://javaee.github.io/glassfish/download>.

*[Microsoft SQL Server]<https://www.microsoft.com/en-us/sql-server/sql-server-downloads> được chọn để xây dựng cơ sở dữ liệu.

###Lưu ý:*Cần nhiều điều kiện tiên quyết hơn nêu muốn xây dựng trang web này từ source code.*
###Hướng dẫn cài đặt(**Ghi chú**:Sử dụng Netbean mở project.)
*Bước 1:Chạy tệp tin db.script để khởi tạo cơ sở dữ liệu.
![database](https://user-images.githubusercontent.com/44610326/71303165-6066f880-23e7-11ea-889d-e75c6b264d60.png)
*Bước 2:Mở Netbean.

*BƯớc 3:Cấu hình lại file glassfish-resource.xml sao cho đúng với cấu hình trên máy
![setup](https://user-images.githubusercontent.com/44610326/71303209-1b8f9180-23e8-11ea-9ff1-4943201d3eee.png)

*Bước 4: Build và run project


