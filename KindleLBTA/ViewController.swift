//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Mateusz Kaflowski on 09.02.2018.
//  Copyright © 2018 Mateusz Kaflowski. All rights reserved.
//

import UIKit



class ViewController: UITableViewController {
    
    var books: [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Kindle"

    }

    func setupBooks() {
        let page1 = Page(number: 1, text: "Text for the first page.")
        let page2 = Page(number: 2, text: "Second page text.")
        
        let pages = [page1, page2]
        
        let book1 = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: pages)
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Bill page 1"),
            Page(number: 2, text: "Bill page 2")
            ])
        
        self.books = [book1, book2]
        
        guard let books = self.books else {
            return
        }
        
        for book in books {
            print(book.title)
            for page in book.pages{
                print(page.text)
            }
        }
    }


}

