import SwiftUI

public struct VersionNotesView: View {
    private let image: TopImageType
    private let title: LocalizedStringKey?
    private let items: [NoteItem]
    private let actionButtonTitle: LocalizedStringKey
    private let destination: AnyView
    private let tint: Color
    
    public var body: some View {
        GeometryReader { geometry in
            VStack(alignment:.center) {
                NotesImage(type: image)
                    .frame(height: geometry.size.height * 0.4)
                
                if let title {
                    Text(title)
                        .font(.title)
                        .bold()
                }
                
                List(items) { item in
                    VersionNoteRow(item: item, tint: tint)
                        .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                
                NavigationLink {
                    destination
                } label: {
                    Text(actionButtonTitle)
                        .foregroundStyle(.black)
                        .bold()
                        .frame(
                            width: geometry.size.width * 0.7,
                            height: 50
                        )
                        .background(tint)
                        .clipShape(.rect(cornerRadius: 12))
                }
                Spacer()
            }
            .ignoresSafeArea(edges: .top)
        }
    }
    
    public init(
        image: TopImageType,
        title: LocalizedStringKey?,
        items: [NoteItem],
        actionButtonTitle: LocalizedStringKey,
        destination: AnyView,
        tint: Color
    ) {
        self.image = image
        self.title = title
        self.items = items
        self.actionButtonTitle = actionButtonTitle
        self.destination = destination
        self.tint = tint
    }
}

#Preview {
    VersionNotesView(
        image: .none,
        title: "Welcome to Forester",
        items: [],
        actionButtonTitle: "Press Me",
        destination: AnyView(Text("")),
        tint: .pink
    )
}
