import Foundation
import Combine

///Esta é uma classe que guarda as entradas do diário em um Array, oferece funções para criar, editar, e apagar entradas.
///Import Combine, conforms to ObservableObject & @Published é código referente ao SwiftUI, isto permite que a classe envie notificações de mudança de estado para a UI. Deve ser retirado fora do iOS, mas a estrutura restante pode ser compartilhada.

final class JournalStore: ObservableObject {
    @Published private(set) var entries: [JournalEntry] = []

    func createEntry() -> JournalEntry.ID {
        let entry = JournalEntry()
        entries.insert(entry, at: 0)
        return entry.id
    }
    func updateEntry(id: JournalEntry.ID, title: String, content: String) {
        guard let index = entries.firstIndex(where: { $0.id == id }) else {
            return
        }

        entries[index].title = title
        entries[index].content = content
        entries[index].modificationDate = Date()
    }

    
    func deleteEntry(id: JournalEntry.ID) {
        entries.removeAll { $0.id == id }
    }
}
