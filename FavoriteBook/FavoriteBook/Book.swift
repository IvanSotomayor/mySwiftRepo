
import Foundation

class Book: NSObject, NSCoding, Codable {
    
    struct PropertyKeys {
        static let title = "title"
        static let author = "author"
        static let genre = "genre"
        static let length = "length"
    }
    
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("books").appendingPathExtension("plist")
    
    static func loadFromFile() -> [Book]?  {
        guard let codedBooks = try? Data(contentsOf: ArchiveURL) else {return nil}
        let decoder = PropertyListDecoder()
        return try? decoder.decode(Array<Book>.self, from: codedBooks)
    }
    
    let title: String
    let author: String
    let genre: String
    let length: String
    
    override var description: String {
        return "\(title) is written by \(author) in the \(genre) genre and is \(length) pages long"
    }
    
    static func loadBooks() -> [Book] {
        return [
                Book(title:"Harry Potter 1", author: "JKRolling", genre: "Ficcion", length: "123"),
                Book(title:"Harry Potter 2", author: "JKRolling", genre: "Ficcion", length: "123"),
                Book(title:"Harry Potter 3", author: "JKRolling", genre: "Ficcion", length: "123"),
                Book(title:"Harry Potter 4", author: "JKRolling", genre: "Ficcion", length: "123"),
                Book(title:"Harry Potter 5", author: "JKRolling", genre: "Ficcion", length: "123"),
                Book(title:"Harry Potter 6", author: "JKRolling", genre: "Ficcion", length: "123"),
        ]
    }
    
    init(title: String, author: String, genre: String, length: String) {
        self.title = title
        self.author = author
        self.genre = genre
        self.length = length
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let title = aDecoder.decodeObject(forKey: PropertyKeys.title) as? String,
            let author = aDecoder.decodeObject(forKey: PropertyKeys.author) as? String,
            let genre = aDecoder.decodeObject(forKey: PropertyKeys.genre) as? String,
            let length = aDecoder.decodeObject(forKey: PropertyKeys.length) as? String else {return nil}
        
        self.init(title: title, author: author, genre: genre, length: length)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(title, forKey: PropertyKeys.title)
        aCoder.encode(author, forKey: PropertyKeys.author)
        aCoder.encode(genre, forKey: PropertyKeys.genre)
        aCoder.encode(length, forKey: PropertyKeys.length)
    }
    
    static func saveToFile(books: [Book]) {
        let encoder = PropertyListEncoder()
        let codedBooks = try? encoder.encode(books)
        try? codedBooks?.write(to: ArchiveURL, options: .noFileProtection)
    }
    
}
