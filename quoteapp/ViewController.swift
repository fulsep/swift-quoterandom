//
//  ViewController.swift
//  quoteapp
//
//  Created by Irul on 4/9/20.
//  Copyright © 2020 irul. All rights reserved.
//

import UIKit

struct _Quote {
    let quote: String
    let author: String
}

struct _Color {
    let value: UIColor
    let name: String
}

class ViewController: UIViewController {

    @IBOutlet weak var Quote: UILabel!
    @IBOutlet weak var Author: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Quote.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        Author.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        showRandomQuote()
    }
    
    let Quotes : [_Quote] = [
        _Quote(quote: "Hello World 1", author: "Irul Stern"),
        _Quote(quote: "Hello World 2", author: "Irul Dominic"),
        _Quote(quote: "Hello World 3", author: "Irul Brian"),
        _Quote(quote: "Hello World 4", author: "Irul Rench"),
    ]
    
    let Color: [_Color] = [
        _Color(value: UIColor(r: 255, g: 0, b: 0, a: 255), name: "red"),
        _Color(value: UIColor(r: 255, g: 255, b: 0, a: 255), name: "yellow"),
        _Color(value: UIColor(r: 0, g: 0, b: 255, a: 255), name: "blue"),
        _Color(value: UIColor(r: 0, g: 255, b: 0, a: 255), name: "green"),
    ]
    
    private func showRandomQuote(){
        let randIndQ = Int.random(in: 0..<Quotes.count)
        let randQuote = Quotes[randIndQ]
        let randIndC = Int.random(in: 0..<Color.count)
        let randColor = Color[randIndC]
        
        Quote.text = randQuote.quote
        Author.text = randQuote.author
        view.backgroundColor = randColor.value
        if randColor.name == "red" || randColor.name == "blue" {
            Quote.textColor = .white
            Author.textColor = .white
        } else {
            Quote.textColor = .black
            Author.textColor = .black
        }
    }

    @IBAction func ButtonAction(_ sender: Any) {
        showRandomQuote()
    }
    
}

extension UIColor{
    convenience init(r: Int = 0, g: Int = 0, b: Int = 0, a: Int = 255){
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: CGFloat(a)/255)
    }
}

