//
//  CustomBookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Zane Jones on 3/10/23.
//

import UIKit

class CustomBookTableViewCell: UITableViewCell {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelAuthor: UILabel!
    @IBOutlet var labelGenre: UILabel!
    @IBOutlet var labelLength: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with book: Book) {
        labelTitle.text = book.title
        labelAuthor.text = book.author
        labelGenre.text = book.genre
        labelLength.text = book.length
    }

}
