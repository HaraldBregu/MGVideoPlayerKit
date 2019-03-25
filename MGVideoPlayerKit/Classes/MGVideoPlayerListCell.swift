// 
//  MGVideoPlayerListCell.swift
//
//  Created by harald bregu on 16/03/2019.
//  Copyright © 2019 Dream Building Company. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import Cosmos

/// :nodoc:
class MGVideoPlayerListCell: UITableViewCell {
    @IBOutlet var thumbImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var yearCategory: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var badgeImageView: UIImageView!
    @IBOutlet var ratingView: CosmosView!
    
    public var isFeatured:Bool = false {
        didSet {
            badgeImageView.isHidden = (isFeatured == false)
            badgeImageView.layer.cornerRadius = 5
            badgeImageView.layer.maskedCorners = [.layerMinXMinYCorner]
            badgeImageView.clipsToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ratingView.settings.updateOnTouch = false
//        ratingView.settings.textFont = MGGeneral.Font.regular(size: 12)!
        ratingView.settings.starSize = 15
        ratingView.settings.starMargin = 2
        thumbImageView.layer.cornerRadius = 5
        thumbImageView.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
