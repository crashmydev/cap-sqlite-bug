using { sap.capire.bookshop as my } from '../db/schema';
service AuthorService @(requires:'admin') {
  entity Authors as projection on my.Authors {
    key authorID,
    books,
    createdAt,
    createdBy,
    dateOfBirth,
    dateOfDeath,
    modifiedAt,
    modifiedBy,
    name,
    placeOfBirth,
    placeOfDeath
  };
  entity Books as projection on my.Books;
}