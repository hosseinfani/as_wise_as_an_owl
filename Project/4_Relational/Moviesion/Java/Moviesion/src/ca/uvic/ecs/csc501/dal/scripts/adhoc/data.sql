DELETE FROM MovieDirector;
DELETE FROM MovieGenre;
DELETE FROM Movie;
DELETE FROM Director;
DELETE FROM Genre;

INSERT INTO Movie(Title, Language, ReleaseDate, RunningTime) VALUES('2001: A Space Odyssey', 'English', 1968, 142);
INSERT INTO Movie(Title, Language, ReleaseDate, RunningTime) VALUES("Rosemary's Baby", 'English', 1968, NULL);
INSERT INTO Movie(Title, Language, ReleaseDate, RunningTime) VALUES('The Birds', 'English', 1963, 119);
INSERT INTO Movie(Title, Language, ReleaseDate, RunningTime) VALUES('Planet of the Apes', 'English', 1968, 112);
INSERT INTO Movie(Title, Language, ReleaseDate, RunningTime) VALUES('Blood Simple', NULL, NULL, NULL);


INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Stanley Kubrick', 1928, 'USA', 1, 13);
INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Alfred Hitchcock', 1899, 'England', 203, 47);
INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Clint Eastwood', 1930, 'USA', 803, 35);
INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Roman Polanski', NULL, 'France', NULL, NULL);
INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Franklin J. Schaffner', NULL, NULL, NULL, NULL);
INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Ethan Cohen', 1957, 'USA', NULL, NULL);
INSERT INTO Director(Name, DateOfBirth, PlaceOfBirth, BestMovieId, MovieCount) VALUES('Joel Cohen', 1954, 'USA', NULL, NULL);

INSERT INTO Genre(Title) VALUES('Action');
INSERT INTO Genre(Title) VALUES('Drama');
INSERT INTO Genre(Title) VALUES('Sci-fi');
INSERT INTO Genre(Title) VALUES('Adventure');
INSERT INTO Genre(Title) VALUES('Horror');
INSERT INTO Genre(Title) VALUES('Mystery');
INSERT INTO Genre(Title) VALUES('Crime');
INSERT INTO Genre(Title) VALUES('Thriller');

INSERT INTO MovieDirector(MovieId, DirectorId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Director WHERE Name = 'Stanley Kubrick'));
INSERT INTO MovieDirector(MovieId, DirectorId) VALUES ((SELECT Id FROM Movie WHERE Title = "Rosemary's Baby"), (SELECT Id FROM Director WHERE Name = 'Roman Polanski'));
INSERT INTO MovieDirector(MovieId, DirectorId) VALUES ((SELECT Id FROM Movie WHERE Title = 'The Birds'), (SELECT Id FROM Director WHERE Name = 'Alfred Hitchcock'));
INSERT INTO MovieDirector(MovieId, DirectorId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Planet of the Apes'), (SELECT Id FROM Director WHERE Name = 'Franklin J. Schaffner'));
INSERT INTO MovieDirector(MovieId, DirectorId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Blood Simple'), (SELECT Id FROM Director WHERE Name = 'Ethan Cohen'));
INSERT INTO MovieDirector(MovieId, DirectorId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Blood Simple'), (SELECT Id FROM Director WHERE Name = 'Joel Cohen'));

INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Sci-fi'));
INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Adventure'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Action'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Drama'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Horror'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Mystery'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Crime'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = '2001: A Space Odyssey'), (SELECT Id FROM Genre WHERE Title = 'Thriller'));
INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = "Rosemary's Baby"), (SELECT Id FROM Genre WHERE Title = 'Drama'));
INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = "Rosemary's Baby"), (SELECT Id FROM Genre WHERE Title = 'Horror'));
INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'The Birds'), (SELECT Id FROM Genre WHERE Title = 'Drama'));
INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'The Birds'), (SELECT Id FROM Genre WHERE Title = 'Horror'));
INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'The Birds'), (SELECT Id FROM Genre WHERE Title = 'Mystery'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Planet of the Apes'), (SELECT Id FROM Genre WHERE Title = 'Sci-fi'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Planet of the Apes'), (SELECT Id FROM Genre WHERE Title = 'Adventure'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Blood Simple'), (SELECT Id FROM Genre WHERE Title = 'Drama'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Blood Simple'), (SELECT Id FROM Genre WHERE Title = 'Crime'));
--INSERT INTO MovieGenre(MovieId, GenreId) VALUES ((SELECT Id FROM Movie WHERE Title = 'Blood Simple'), (SELECT Id FROM Genre WHERE Title = 'Thriller'));
