//
//  QuranModel.swift
//  MuslimGate
//
//  Created by M.M.Z on 28/09/2023.
//

import Foundation

class Page: Identifiable {
    let id = UUID()
    let pageURL: URL
    let pageNumber: Int
    
    init(pageNumber: Int, pageURL: URL) {
        print("page Number is: \(pageNumber)")
        self.pageNumber = pageNumber
        self.pageURL = pageURL
    }
}
