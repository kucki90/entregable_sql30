CREATE TABLE categorias (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL
);
CREATE TABLE notas (
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(100) NOT NULL,
fecha_creacion DATE NOT NULL,
fecha_modificacion DATE NOT NULL,
descripcion VARCHAR(500) NOT NULL,
eliminacion BOOLEAN NOT NULL
);
CREATE TABLE usuarios (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL
);
ALTER TABLE categorias
ADD id_nota INT,
ADD FOREIGN KEY(id_nota) REFERENCES notas(id);
ALTER TABLE notas
ADD id_categoria INT,
ADD FOREIGN KEY(id_categoria) REFERENCES categorias(id);
ALTER TABLE usuarios
ADD id_nota INT,
ADD FOREIGN KEY(id_nota) REFERENCES notas(id);
ALTER TABLE notas
ADD id_usuario INT,
ADD FOREIGN KEY(id_usuario) REFERENCES usuarios(id);