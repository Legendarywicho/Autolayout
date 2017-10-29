//
//  ViewController.swift
//  AutoLayout
//
//  Created by Luis Santiago  on 10/26/17.
//  Copyright © 2017 Luis Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let logoImageView : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "ic_launcher_APP.png"));
        image.translatesAutoresizingMaskIntoConstraints = false;
        image.contentMode = .scaleAspectFit;
        return image;
    }();
 
    let descriptionTextView : UITextView = {
        let textView  = UITextView();
        let attributedText = NSMutableAttributedString(string: "Get all the results in your hand", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)]);
//        textView.text = "Were the results are in you hand";
//        textView.font = .boldSystemFont(ofSize: 18);
        attributedText.append(NSAttributedString(string: "\n\n\nLive the experience Ailgol, enjoy the lates matches and news", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 13),NSAttributedStringKey.foregroundColor: UIColor.gray ]));
        
        textView.attributedText = attributedText;
        textView.textColor = .black;
        textView.translatesAutoresizingMaskIntoConstraints = false;
        textView.textAlignment = .center;
        textView.isEditable = false;
        textView.isScrollEnabled  = false;
        return textView;
    }();
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor(red:0.13, green:0.13, blue:0.13, alpha:1.0);
        navigationItem.title = "Aigol";
        view.backgroundColor = .white;
        view.addSubview(descriptionTextView);
        setUpLayout();
    }

    func setUpLayout(){
        let topImageContainer = UIView();
//        topImageContainer.backgroundColor = .blue;
        view.addSubview(topImageContainer);
//        topImageContainer.frame = CGRect(x: 0, y: 0, width: 100, height: 100);
        //Enable autolayout
        topImageContainer.translatesAutoresizingMaskIntoConstraints = false;
        topImageContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true;
        topImageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true;
        topImageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true;
        topImageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true;
        
        topImageContainer.addSubview(logoImageView);
        logoImageView.centerXAnchor.constraint(equalTo: topImageContainer.centerXAnchor).isActive = true;
        logoImageView.centerYAnchor.constraint(equalTo: topImageContainer.centerYAnchor).isActive = true;
        logoImageView.heightAnchor.constraint(equalTo: topImageContainer.heightAnchor,  multiplier: 0.5).isActive = true;
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainer.bottomAnchor, constant: 20).isActive = true;
        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant : 24).isActive = true;
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant : -24).isActive = true;
        descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true;
    }
}

