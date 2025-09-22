INSERT INTO [USER] (UserID, FirstName, LastName, Email, Phone, Password, Address, City, PostalCode)
VALUES (1, 'Nguyen', 'Van Manh', 'elroydevops@gmail.com', '0900000009', '0900000009', 'Ha Noi', 'Ha Noi', '000084');

-- Thêm dữ liệu vào bảng PRODUCT
INSERT INTO PRODUCT (ProductID, Name, Brand, Description, ImageURL)
VALUES 
    (1, 'Nike Air Max 270', 'Nike', 'The Nike Air Max 270 combines elements from the Air Max family and modern styling for a sneaker that''s sure to turn heads.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/38321ec6-8c92-488d-924d-02dd07eaeceb/air-max-270-older-shoes-tnlrnr.png'),
    (2, 'Adidas Ultra Boost', 'Adidas', 'The Adidas Ultra Boost is a popular running shoe known for its comfort and style.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f042b05ad1bf4d51b7dfaf1600054038_9366/Ultraboost_1.0_Shoes_White_HQ4202_01_standard.jpg'),
    (3, 'Converse Chuck Taylor All Star', 'Converse', 'The Converse Chuck Taylor All Star is a classic sneaker that''s been a staple for decades.', 'https://supersports.com.vn/cdn/shop/products/M7652C-1.jpg?v=1700128411&width=1920'),
    (4, 'Vans Old Skool', 'Vans', 'The Vans Old Skool is a timeless skate shoe with a durable canvas and suede upper.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/4896bd57f0894845b5c0ae8300eec549_9366/Grand_Court_Cloudfoam_Comfort_Shoes_White_GW9195_01_standard.jpg'),
    (5, 'New Balance 574', 'New Balance', 'The New Balance 574 is a classic sneaker known for its comfort and versatility.', 'https://supersports.com.vn/cdn/shop/files/U574KBR-1.jpg?v=1699522065'),
    (6, 'Puma Suede Classic', 'Puma', 'The Puma Suede Classic is a legendary sneaker known for its sleek design and comfort.', 'https://product.hstatic.net/1000284478/product/01_374915_1_b622d15c43ee4f2e85180cbb5b850fd3_large.jpg');

-- Thêm dữ liệu vào bảng PRODUCT_SIZE cho sản phẩm Nike Air Max 270
INSERT INTO PRODUCT_SIZE (ProductSizeID, Size, Price, Quantity, ProductID)
VALUES 
    (1, 36, 3109000, 10, 1),
    (2, 37, 3109000, 10, 1),
    (3, 38, 3109000, 10, 1),
    (4, 39, 3109000, 10, 1),
    (5, 40, 3109000, 10, 1),
    (6, 41, 3109000, 10, 1),
    (7, 42, 3109000, 10, 1),
    (8, 43, 3109000, 10, 1);

-- Thêm dữ liệu vào bảng PRODUCT_SIZE cho sản phẩm Adidas Ultra Boost
INSERT INTO PRODUCT_SIZE (ProductSizeID, Size, Price, Quantity, ProductID)
VALUES 
    (9, 36, 4500000, 10, 2),
    (10, 37, 4500000, 10, 2),
    (11, 38, 4500000, 10, 2),
    (12, 39, 4500000, 10, 2),
    (13, 40, 4500000, 10, 2),
    (14, 41, 4500000, 10, 2),
    (15, 42, 4500000, 10, 2),
    (16, 43, 4500000, 10, 2);

-- Thêm dữ liệu vào bảng PRODUCT_SIZE cho sản phẩm Converse Chuck Taylor All Star
INSERT INTO PRODUCT_SIZE (ProductSizeID, Size, Price, Quantity, ProductID)
VALUES 
    (17, 36, 1015000, 10, 3),
    (18, 37, 1015000, 10, 3),
    (19, 38, 1015000, 10, 3),
    (20, 39, 1015000, 10, 3),
    (21, 40, 1015000, 10, 3),
    (22, 41, 1015000, 10, 3),
    (23, 42, 1015000, 10, 3),
    (24, 43, 1015000, 10, 3);

-- Thêm dữ liệu vào bảng PRODUCT_SIZE cho sản phẩm Vans Old Skool
INSERT INTO PRODUCT_SIZE (ProductSizeID, Size, Price, Quantity, ProductID)
VALUES 
    (25, 36, 2000000, 10, 4),
    (26, 37, 2000000, 10, 4),
    (27, 38, 2000000, 10, 4),
    (28, 39, 2000000, 10, 4),
    (29, 40, 2000000, 10, 4),
    (30, 41, 2000000, 10, 4),
    (31, 42, 2000000, 10, 4),
    (32, 43, 2000000, 10, 4);

-- Thêm dữ liệu vào bảng PRODUCT_SIZE cho sản phẩm New Balance 574
INSERT INTO PRODUCT_SIZE (ProductSizeID, Size, Price, Quantity, ProductID)
VALUES 
    (33, 36, 1535400, 10, 5),
    (34, 37, 1535400, 10, 5),
    (35, 38, 1535400, 10, 5),
    (36, 39, 1535400, 10, 5),
    (37, 40, 1535400, 10, 5),
    (38, 41, 1535400, 10, 5),
    (39, 42, 1535400, 10, 5),
    (40, 43, 1535400, 10, 5);

-- Thêm dữ liệu vào bảng PRODUCT_SIZE cho sản phẩm Puma Suede Classic
INSERT INTO PRODUCT_SIZE (ProductSizeID, Size, Price, Quantity, ProductID)
VALUES 
    (41, 36, 1999000, 10, 6),
    (42, 37, 1999000, 10, 6),
    (43, 38, 1999000, 10, 6),
    (44, 39, 1999000, 10, 6),
    (45, 40, 1999000, 10, 6),
    (46, 41, 1999000, 10, 6),
    (47, 42, 1999000, 10, 6),
    (48, 43, 1999000, 10, 6);