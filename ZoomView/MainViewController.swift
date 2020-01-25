//
//  MainViewController.swift
//  ZoomView
//
//  Created by Damon Cricket on 25.01.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate {
    var imageView: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView(frame: CGRect(x: 0.0, y: 0.0, width: view.bounds.width, height: view.bounds.height))
        scrollView.contentSize = scrollView.bounds.size
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 4.0
        view.addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0.0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.0).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
        
        imageView.frame = CGRect(x: 0.0, y: 0.0, width: view.bounds.width, height: view.bounds.height)
        imageView.image = UIImage(named: "picture")
        scrollView.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0.0).isActive = true
        imageView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 0.0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0.0).isActive = true
        imageView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 0.0).isActive = true
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
