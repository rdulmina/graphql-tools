import ballerina/graphql;

type Schema15Api service object {
    *graphql:Service;

    resource function get book(int id) returns Book?;
    resource function get books(int[]? ids = [1, 2]) returns Book[]?;
    resource function get booksOfBooks(int[][]? idOfIds = [[1]]) returns Book[][]?;
	remote function addBook(string title, int authorId) returns Book?;
	resource function subscribe bookTitles() returns stream<string>;
};

service class Book {
	resource function get id() returns int {}
	resource function get title() returns string {}
	resource function get price() returns float {}
}
