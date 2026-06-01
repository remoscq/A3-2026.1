import Foundation

///Estrutura básica de dados de uma entrada no diário. Pode ser compartilhada em todo.

struct JournalEntry: Identifiable, Codable {
    let id: UUID
    var title: String
    var content: String
    let creationDate: Date
    var modificationDate: Date
    
    init(
        id: UUID = UUID(),
        title: String = "New Entry",
        content: String = String(),
        creationDate: Date = Date(),
        modificationDate: Date = Date()
    ) {
        self.id = id
        self.title = title
        self.content = content
        self.creationDate = creationDate
        self.modificationDate = modificationDate
    }
}




