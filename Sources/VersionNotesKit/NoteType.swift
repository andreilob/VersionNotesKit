import Foundation

public enum NoteType {
    /// Note that contains only a title.
    case short(String)
    
    /// Note that contains a title and a description too, displayed on multiple rows.
    case full(String, String)
}
