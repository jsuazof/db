CREATE TABLE Moneda (
    currency_id INT PRIMARY KEY,
    currency_name VARCHAR(50),
    currency_symbol VARCHAR(10)
);

CREATE TABLE Usuario (
    user_id INT PRIMARY KEY,
    nombre VARCHAR(255),
    correo_electronico VARCHAR(255),
    contrasenha VARCHAR(255),
    saldo DECIMAL(10,2),
    currency_id INT,
    FOREIGN KEY (currency_id) REFERENCES Moneda(currency_id)
);

CREATE TABLE Transaccion (
    transaction_id INT PRIMARY KEY,
    sender_user_id INT,
    receiver_user_id INT,
    importe DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (sender_user_id) REFERENCES Usuario(user_id),
    FOREIGN KEY (receiver_user_id) REFERENCES Usuario(user_id)
);


INSERT INTO Usuario (user_id, nombre, correo_electronico, contrasenha, saldo)
VALUES (1, 'John Doe', 'johndoe@example.com', '123abc', 25000.02, 1);

INSERT INTO Transaccion (transaction_id, sender_user_id, receiver_user_id, importe, transaction_date)
VALUES (1, 1, 1, 2000.22, '01-02-2024');


-- Select rows from a Table or View '[Usuario]' in schema '[dbo]'
SELECT * FROM Usuario;

