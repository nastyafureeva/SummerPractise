import Foundation
class NationalLibrary {
    private var books: [Book]
    private var magazines: [Magazine]
    private var users: [User]
    
    init() {
        books = []
        magazines = []
        users = []
    }
                                        //Книги
    func addBook(book: Book) {
        books.append(book)
    }
    
    func removeBook(book: Book) {
        if let index = books.firstIndex(of: book) {
            books.remove(at: index)
        }
    }
    
    func searchBook(byTitle title: String) -> [Book] {
        return books.filter { $0.title == title }
    }
    
                                          // Журналы
    func addMagazine(magazine: Magazine) {
        magazines.append(magazine)
    }
    
    func removeMagazine(magazine: Magazine) {
        if let index = magazines.firstIndex(of: magazine) {
            magazines.remove(at: index)
        }
    }
    
    func searchMagazine(byTitle title: String) -> [Magazine] {
        return magazines.filter { $0.title == title }
    }
    
                                        //Посетители
    func addUser(user: User) {
        users.append(user)
    }
    
    func removeUser(user: User) {
        if let index = users.firstIndex(of: user) {
            users.remove(at: index)
        }
    }
    
    func searchUser(byName name: String) -> [User] {
        return users.filter { $0.name == name }
    }
}

class Book {
    let title: String
    let author: String
    let genre: Genre
    var available: Bool
    
    init(title: String, author: String, genre: Genre, available: Bool) {
        self.title = title
        self.author = author
        self.genre = genre
        self.available = available
    }
}

class User {
    let name: String
    let age: Int
    let status: UserStatus
    
    init(name: String, age: Int, status: UserStatus) {
        self.name = name
        self.age = age
        self.status = status
    }
}

class Admin: User {
                            // Дополнительные методы для работы с книгами и пользователями
}

class Magazine {
    let title: String
    let number: Int
    var available: Bool
    
    init(title: String, number: Int, available: Bool) {
        self.title = title
        self.number = number
        self.available = available
    }
}

struct Address {
    let city: String
    let street: String
    let buildingNumber: Int
}

struct Date {
    let day: Int
    let month: Int
    let year:

Int
}

protocol SearchProtocol {
    func searchBook(byTitle title: String) -> [Book]
    func searchMagazine(byTitle title: String) -> [Magazine]
}

protocol AuthorizationProtocol {
    func addUser(user: User)
    func removeUser(user: User)
}

enum Genre {
    case novel
    case fantasy
    case detective
    
}

enum UserStatus {
    case libraryMember
    case guest
}
