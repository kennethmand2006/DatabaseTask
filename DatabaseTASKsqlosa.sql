insert into Categories (CategoryName)
values 
('paintings'),
('Sculpture'),
('Photography'),
('Live art'),
('Graphyty'),
('Digital'),
('Kollaz'),
('Video art'),
('Insatllation art'),
('Preformancr art');


insert into Artists(Name, BirthYear, Country)
values 
('Pablo Picasso', 1881, 'Spanis'),
('Vincent van Gogh', 1853, 'Dutch'),
('Claude Monet', 1840, 'French'),
('Salvador Dalí', 1904, 'Spanish'),
('Leonardo da Vinci', 1452, 'Italian'),
('Marko King', 1969, 'Estonian'),
('Mel Kosk', 1905, 'Estonian'),
('Ingvar Dervsiski', 1804, 'Finnish'),
('Kalle Rovempära', 1869, 'Finnish'),
('Käsna Kalle', 1877, 'German');


insert into Owners(OwnerName, ContactInfo, Address)
values 
('John Doe', 'john.doe@email.com', '12spt'),
('Jane Kala', 'jane.Kala@email.com', '11spt'),
('Jane Peet', 'jane.Peet@email.com', '13spt'),
('Jane Rand', 'jane.Rand@email.com', '15spt'),
('Jane Silm', 'jane.Silm@email.com', '14spt'),
('Jane Pea', 'jane.Pea@email.com', '16spt'),
('Jane Mänd', 'jane.Mänd@email.com', '10spt'),
('Jane Tamm', 'jane.Tamm@email.com', '18spt'),
('Jane Maripuu', 'jane.Maripuu@email.com', '17spt'),
('Jane Mets', 'jane.Mets@email.com', '46spt');



INSERT INTO Artworks (Name, CreationDate, ArtistID, OwnerID, CategorieID)
VALUES
('Guernica',1, 1, 1, 1),
('Starry Night', 2, 2, 1, 2),
('Water Lilies', 3, 3, 2, 1),
('Mona Lisa', 4, 4, 1, 4),
('The Persistence of Memory', 5, 5, 1, 5),
('The Two Fridas', 6, 6, 2, 6),
('Campbell’s Soup Cans', 7, 7, 1, 7),
('The Night Watch', 8, 8, 1, 8),
('The Kiss', 9, 9, 2, 9),
('The Birth of Venus', 10, 10, 1, 10);




-- Kontrolli tabelite sisu
SELECT * FROM Artists;
SELECT * FROM Artworks;
SELECT * FROM Categories;
SELECT * FROM Owners;


CREATE PROCEDURE GetArtworksByCategory
    @CategoryId INT
AS
BEGIN
    SELECT * 
    FROM Artworks
    WHERE CategorieID = @CategoryId;
END;

GetArtworksByCategory @CategoryId = 1 

CREATE PROCEDURE GetArtworksCountByCategory
    @CategoryId INT
AS
BEGIN
    DECLARE @ArtworksCount INT;
    
    SELECT @ArtworksCount = COUNT(*) 
    FROM Artworks
    WHERE CategorieID = @CategoryId;

    RETURN @ArtworksCount;
END;


DECLARE @Count INT;
EXEC @Count = GetArtworksCountByCategory @CategoryId = 1;
PRINT @Count;

ALTER PROCEDURE GetArtworksByCategory
    @CategoryId INT
AS
BEGIN
    SELECT Name, CreationDate 
    FROM Artworks
    WHERE CategorieID = @CategoryId;
END;

