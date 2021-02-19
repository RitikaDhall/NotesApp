//
//  NoteViewController.swift
//  Notes
//
//  Created by Ritika Dhall on 09/10/20.
//

import UIKit

class NoteViewController: UIViewController {
    var note: Note!
    
    @IBOutlet var textView: UITextView!
    
    @IBAction func deleteNote() {
        NoteManager.main.delete(note: note)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = note.contents
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        note.contents = textView.text
        NoteManager.main.save(note: note)
    }
}
