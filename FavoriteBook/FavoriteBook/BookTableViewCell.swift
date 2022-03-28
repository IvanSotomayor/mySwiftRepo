//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Iván Ortega Sotomayor on 18/03/22.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var tittleName: UILabel!
    @IBOutlet weak var tfauthor: UILabel!
    @IBOutlet weak var tfgenre: UILabel!
    @IBOutlet weak var tflength: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with book: Book) {
        tittleName.text = book.title
        tfauthor.text = book.author
        tfgenre.text = book.genre
        tflength.text = book.length
    }

}
