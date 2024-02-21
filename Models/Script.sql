-- Crear Base --

CREATE DATABASE PruebaTec02NDMM

-- Seleccionar Base --

USE PruebaTec02NDMM

-- Crear la tabla de categorías
CREATE TABLE Categorias (
    CategoriaID INT IDENTITY(1,1) PRIMARY KEY,
    NombreCategoria VARCHAR(255) NOT NULL
);

-- Crear la tabla de productos
CREATE TABLE Productos (
    ProductoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreProducto VARCHAR(255) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    CategoriaID INT,
	Imagen VARBINARY(MAX)
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);
