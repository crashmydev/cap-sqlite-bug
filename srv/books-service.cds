using { sap.capire.bookshop as my } from '../db/schema';
service BooksService @(requires:'admin') {
  entity Books as projection on my.Books {
    key ID,
    title,
    descr,
    author,
    author.name as authorName,
    author.authorID as authorID
  };
  entity Authors as projection on my.Authors;
  entity ValueHelpTitles as projection on my.Titles;
}