//
//  ViewController.swift
//  FacialRecognitionApp
//
//  Created by Aurela Bala on 2023-04-02.
//

import UIKit
import Vision
import Photos



class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var pictureChosen: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getImage(_ sender: UIButton)
    {
        getPhoto()
    }
    
    func getPhoto() {
     let picker = UIImagePickerController()
     picker.delegate = self
     picker.sourceType = .savedPhotosAlbum
     present(picker, animated: true, completion: nil)
     }
}

