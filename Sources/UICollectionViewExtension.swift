//
//  UICollectionViewExtension.swift
//  SVSwiftHelpers
//
//  Created by Sudhakar Dasari on 06/05/21.
//

import Foundation

public extension UICollectionView {
    
    
    /// Adds Label with text in center of table view
    /// - Parameters:
    ///   - message: shows in empty tableview
    ///   - textColour: default color `lightGray`, can be overridden.
    func setEmptyMessage(_ message: String?, textColour:UIColor = .gray) {
    
        let messageLabel    = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text   = message
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.lineBreakMode = .byWordWrapping
        messageLabel.textColor     = textColour
        messageLabel.sizeToFit()
        
        self.backgroundView = messageLabel
    }
}
