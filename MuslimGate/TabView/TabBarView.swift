//
//  TabBarView.swift
//  MuslimGate
//
//  Created by M.M.Z on 10/08/2023.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        return selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                Spacer()
                Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                    .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                    .foregroundColor(selectedTab == tab ? Color(ColorSet.defaultColorSet) : .gray)
                    .font(.system(size: 22))
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.2)) {
                            selectedTab = tab
                        }
                    }
                Spacer()
            }
        }
        .frame(height: 60)
        .background(.thinMaterial)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(ColorSet.defaultColorSet), lineWidth: 2)
        )
        .padding()
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.gearshape))
    }
}
