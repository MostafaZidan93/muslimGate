//
//  QuranView.swift
//  MuslimGate
//
//  Created by M.M.Z on 28/09/2023.
//

import SwiftUI
import SDWebImageSwiftUI


struct QuranView: View {
    
    @StateObject private var viewModel = QuranViewModel()

    
    var body: some View {
        
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    if viewModel.pages.count != 0 {
                        ForEach(viewModel.pages) { page in
                            WebImage(url: page.pageURL)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width)
                                
                        }
                    } else {
                        ProgressView()
                            .progressViewStyle(.circular)
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .onAppear() {
            viewModel.fetchImagesURLs()
            UIScrollView.appearance().isPagingEnabled = true
        }
    }
}

struct QuranView_Previews: PreviewProvider {
    static var previews: some View {
        QuranView()
    }
}
