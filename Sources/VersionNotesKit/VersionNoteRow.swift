import SwiftUI

struct VersionNoteRow: View {
    var item: NoteItem
    let tint: Color
    
    var body: some View {
        HStack(spacing: 6) {
            Group {
                switch item.image {
                case .system(let name):
                    Image(systemName: name)
                case .resource(let imageResource):
                    Image(imageResource)
                }
            }
            .frame(width: 44, height: 44)
            .foregroundStyle(tint)
            
            switch item.type {
            case .short(let title):
                Text(title)
                    .font(.title3)
                    .bold()
            case .full(let title, let description):
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title3)
                        .bold()
                    Text(description)
                        .font(.footnote)
                }
            }
        }
    }
}
