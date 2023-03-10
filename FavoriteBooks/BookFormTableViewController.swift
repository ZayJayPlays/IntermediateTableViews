//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Zane Jones on 3/9/23.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    @IBOutlet var textFieldTitle: UITextField!
    @IBOutlet var textFieldAuthor: UITextField!
    @IBOutlet var textFieldGenre: UITextField!
    @IBOutlet var textFieldLength: UITextField!
    
    var book: Book?

    
    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let book = book else {return}
        
        textFieldTitle.text = book.title
        textFieldAuthor.text = book.author
        textFieldGenre.text = book.genre
        textFieldLength.text = book.length
    }
    

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let title = textFieldTitle.text,
            let author = textFieldAuthor.text,
            let genre = textFieldGenre.text,
            let length = textFieldLength.text else {return}
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }
}
