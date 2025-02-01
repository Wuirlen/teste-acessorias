CREATE DATABASE IF NOT EXISTS teste;
USE teste;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- Inserção de 120 registros fictícios
INSERT INTO clientes (name, phone, email) VALUES
('Cliente 1', '11999990001', 'cliente1@example.com'),
('Cliente 2', '11999990002', 'cliente2@example.com'),
('Cliente 3', '11999990003', 'cliente3@example.com'),
('Cliente 4', '11999990004', 'cliente4@example.com'),
('Cliente 5', '11999990005', 'cliente5@example.com'),
('Cliente 6', '11999990006', 'cliente6@example.com'),
('Cliente 7', '11999990007', 'cliente7@example.com'),
('Cliente 8', '11999990008', 'cliente8@example.com'),
('Cliente 9', '11999990009', 'cliente9@example.com'),
('Cliente 10', '11999990010', 'cliente10@example.com'),
('Cliente 11', '11999990011', 'cliente11@example.com'),
('Cliente 12', '11999990012', 'cliente12@example.com'),
('Cliente 13', '11999990013', 'cliente13@example.com'),
('Cliente 14', '11999990014', 'cliente14@example.com'),
('Cliente 15', '11999990015', 'cliente15@example.com'),
('Cliente 16', '11999990016', 'cliente16@example.com'),
('Cliente 17', '11999990017', 'cliente17@example.com'),
('Cliente 18', '11999990018', 'cliente18@example.com'),
('Cliente 19', '11999990019', 'cliente19@example.com'),
('Cliente 20', '11999990020', 'cliente20@example.com'),
('Cliente 21', '11999990021', 'cliente21@example.com'),
('Cliente 22', '11999990022', 'cliente22@example.com'),
('Cliente 23', '11999990023', 'cliente23@example.com'),
('Cliente 24', '11999990024', 'cliente24@example.com'),
('Cliente 25', '11999990025', 'cliente25@example.com'),
('Cliente 26', '11999990026', 'cliente26@example.com'),
('Cliente 27', '11999990027', 'cliente27@example.com'),
('Cliente 28', '11999990028', 'cliente28@example.com'),
('Cliente 29', '11999990029', 'cliente29@example.com'),
('Cliente 30', '11999990030', 'cliente30@example.com'),
('Cliente 31', '11999990031', 'cliente31@example.com'),
('Cliente 32', '11999990032', 'cliente32@example.com'),
('Cliente 33', '11999990033', 'cliente33@example.com'),
('Cliente 34', '11999990034', 'cliente34@example.com'),
('Cliente 35', '11999990035', 'cliente35@example.com'),
('Cliente 36', '11999990036', 'cliente36@example.com'),
('Cliente 37', '11999990037', 'cliente37@example.com'),
('Cliente 38', '11999990038', 'cliente38@example.com'),
('Cliente 39', '11999990039', 'cliente39@example.com'),
('Cliente 40', '11999990040', 'cliente40@example.com'),
('Cliente 41', '11999990041', 'cliente41@example.com'),
('Cliente 42', '11999990042', 'cliente42@example.com'),
('Cliente 43', '11999990043', 'cliente43@example.com'),
('Cliente 44', '11999990044', 'cliente44@example.com'),
('Cliente 45', '11999990045', 'cliente45@example.com'),
('Cliente 46', '11999990046', 'cliente46@example.com'),
('Cliente 47', '11999990047', 'cliente47@example.com'),
('Cliente 48', '11999990048', 'cliente48@example.com'),
('Cliente 49', '11999990049', 'cliente49@example.com'),
('Cliente 50', '11999990050', 'cliente50@example.com'),
('Cliente 51', '11999990051', 'cliente51@example.com'),
('Cliente 52', '11999990052', 'cliente52@example.com'),
('Cliente 53', '11999990053', 'cliente53@example.com'),
('Cliente 54', '11999990054', 'cliente54@example.com'),
('Cliente 55', '11999990055', 'cliente55@example.com'),
('Cliente 56', '11999990056', 'cliente56@example.com'),
('Cliente 57', '11999990057', 'cliente57@example.com'),
('Cliente 58', '11999990058', 'cliente58@example.com'),
('Cliente 59', '11999990059', 'cliente59@example.com'),
('Cliente 60', '11999990060', 'cliente60@example.com'),
('Cliente 61', '11999990061', 'cliente61@example.com'),
('Cliente 62', '11999990062', 'cliente62@example.com'),
('Cliente 63', '11999990063', 'cliente63@example.com'),
('Cliente 64', '11999990064', 'cliente64@example.com'),
('Cliente 65', '11999990065', 'cliente65@example.com'),
('Cliente 66', '11999990066', 'cliente66@example.com'),
('Cliente 67', '11999990067', 'cliente67@example.com'),
('Cliente 68', '11999990068', 'cliente68@example.com'),
('Cliente 69', '11999990069', 'cliente69@example.com'),
('Cliente 70', '11999990070', 'cliente70@example.com'),
('Cliente 71', '11999990071', 'cliente71@example.com'),
('Cliente 72', '11999990072', 'cliente72@example.com'),
('Cliente 73', '11999990073', 'cliente73@example.com'),
('Cliente 74', '11999990074', 'cliente74@example.com'),
('Cliente 75', '11999990075', 'cliente75@example.com'),
('Cliente 76', '11999990076', 'cliente76@example.com'),
('Cliente 77', '11999990077', 'cliente77@example.com'),
('Cliente 78', '11999990078', 'cliente78@example.com'),
('Cliente 79', '11999990079', 'cliente79@example.com'),
('Cliente 80', '11999990080', 'cliente80@example.com'),
('Cliente 81', '11999990081', 'cliente81@example.com'),
('Cliente 82', '11999990082', 'cliente82@example.com'),
('Cliente 83', '11999990083', 'cliente83@example.com'),
('Cliente 84', '11999990084', 'cliente84@example.com'),
('Cliente 85', '11999990085', 'cliente85@example.com'),
('Cliente 86', '11999990086', 'cliente86@example.com'),
('Cliente 87', '11999990087', 'cliente87@example.com'),
('Cliente 88', '11999990088', 'cliente88@example.com'),
('Cliente 89', '11999990089', 'cliente89@example.com'),
('Cliente 90', '11999990090', 'cliente90@example.com'),
('Cliente 91', '11999990091', 'cliente91@example.com'),
('Cliente 92', '11999990092', 'cliente92@example.com'),
('Cliente 93', '11999990093', 'cliente93@example.com'),
('Cliente 94', '11999990094', 'cliente94@example.com'),
('Cliente 95', '11999990095', 'cliente95@example.com'),
('Cliente 96', '11999990096', 'cliente96@example.com'),
('Cliente 97', '11999990097', 'cliente97@example.com'),
('Cliente 98', '11999990098', 'cliente98@example.com'),
('Cliente 99', '11999990099', 'cliente99@example.com'),
('Cliente 100', '11999990100', 'cliente100@example.com'),
('Cliente 101', '11999990101', 'cliente101@example.com'),
('Cliente 102', '11999990102', 'cliente102@example.com'),
('Cliente 103', '11999990103', 'cliente103@example.com'),
('Cliente 104', '11999990104', 'cliente104@example.com'),
('Cliente 105', '11999990105', 'cliente105@example.com'),
('Cliente 106', '11999990106', 'cliente106@example.com'),
('Cliente 107', '11999990107', 'cliente107@example.com'),
('Cliente 108', '11999990108', 'cliente108@example.com'),
('Cliente 109', '11999990109', 'cliente109@example.com'),
('Cliente 110', '11999990110', 'cliente110@example.com'),
('Cliente 111', '11999990111', 'cliente111@example.com'),
('Cliente 112', '11999990112', 'cliente112@example.com'),
('Cliente 113', '11999990113', 'cliente113@example.com'),
('Cliente 114', '11999990114', 'cliente114@example.com'),
('Cliente 115', '11999990115', 'cliente115@example.com'),
('Cliente 116', '11999990116', 'cliente116@example.com'),
('Cliente 117', '11999990117', 'cliente117@example.com'),
('Cliente 118', '11999990118', 'cliente118@example.com'),
('Cliente 119', '11999990119', 'cliente119@example.com'),
('Cliente 120', '11999990120', 'cliente120@example.com');