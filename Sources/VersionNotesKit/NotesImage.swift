import SwiftUI

struct NotesImage: View {
    let type: TopImageType
    
    var body: some View {
        GeometryReader { geometry in
            switch type {
            case .none:
                EmptyView()
            case .background(let imageResource):
                Image(imageResource)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width)
            case .centered(let imageResource):
                Image(imageResource)
            case .systemCentered(let name):
                Image(systemName: name)
            }
        }
    }
}
