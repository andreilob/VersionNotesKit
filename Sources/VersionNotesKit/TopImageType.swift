import SwiftUI

public enum TopImageType {
    /// No top image for notes.
    case none
    
    /// Full width background.
    case background(ImageResource)
    
    /// Centered icon provided from assets.
    case centered(ImageResource)
    
    /// Centered icon provided from the system.
    case systemCentered(String)
}
