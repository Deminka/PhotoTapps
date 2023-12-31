//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by mac on 24.06.2023.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool == true {
                print("Успешно")
            }
            
        }
        
        present(shareController, animated: true)
        
    }
    


}
