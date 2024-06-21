//
//  Home.swift
//  ScrollToHideHeader
//
//  Created by Omid Shojaeian Zanjani on 21/06/24.
//

import SwiftUI
// init 
struct Home: View {
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing: 15) {
                ForEach(1...10, id: \.self) { count in
                    DummyView()
                }
            }
            .padding(15)
        }
    }
    
    ////// Dummy Card View
    @ViewBuilder
    func DummyView() -> some View {
        VStack(alignment: .leading, spacing: 6) {
            RoundedRectangle(cornerRadius: 6)
                .frame(height: 220)
            
            
            HStack(spacing: 10){
                Circle()
                    .frame(width: 45, height: 45)
                
                VStack(alignment: .leading, spacing: 4) {
                    Rectangle()
                        .frame(height: 10)
                    
                    HStack(spacing:10){
                        Rectangle()
                            .frame(width:100)
                        Rectangle()
                            .frame(width:80)
                        Rectangle()
                            .frame(width:60)
                    }
                    .frame(height: 10)
                }
            }
        }
        .foregroundStyle(.tertiary)
    }
}

#Preview {
    Home()
}
