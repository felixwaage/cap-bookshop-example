using { sap.capire.bookshop as my } from '../db/schema';
service CatalogService @(path:'/browse') {
    
  /** For display in details pages */
  @readonly entity Books as projection on my.Books { *,
    author.name as author
  } excluding { createdBy, modifiedBy };

}