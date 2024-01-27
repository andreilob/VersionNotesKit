import SwiftUI

public struct NoteItem: Identifiable {
    public var id: String {
        switch type {
        case .short(let title): title
        case .full(let title, _): title
        }
    }
    
    let image: ImageType
    let type: NoteType
    
    public init(
        image: ImageType,
        type: NoteType
    ) {
        self.image = image
        self.type = type
    }
}
