//
//  QuranViewModel.swift
//  MuslimGate
//
//  Created by M.M.Z on 28/09/2023.
//

import Foundation
import UIKit
import FirebaseStorage
import SwiftUI

class QuranViewModel: ObservableObject {
    
    @Published var pages: [Page] = []
    
    
    
    func fetchImagesURLs() {
        let semaphore = DispatchSemaphore(value: 1)
        DispatchQueue.global().async {
            for pageNumber in 1...10 {
                semaphore.wait()
                let imageURL = Storage.storage().reference().child("Quran As Images/set1/\(pageNumber).png")
                imageURL.downloadURL { imageURL, error in
                    guard let imageURL = imageURL else {
                        print("Error Getting url !!!!: \(error!.localizedDescription)")
                        return
                    }
                    let page = Page(pageNumber: pageNumber, pageURL: imageURL)
                    DispatchQueue.main.async {
                        self.pages.append(page)
                        semaphore.signal()
                    }
                }
            }
        }
    }
}
