//
//  SimpleWidgetEntryView.swift
//  SImpleWidgetExtension
//
//  Created by ramil on 23.09.2020.
//

import SwiftUI

struct SimpleWidgetEntryView: View {
    
    let entry: SimpleWidgetEntry
    
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                Text(getMonth())
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(Rectangle().fill(Color.red))
                
                Text(getDay())
                Text(getDate())
                    .font(.largeTitle)
            }
            .background(Rectangle().fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))))
            .padding(20)
            .clipShape(Rectangle())
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
        }.edgesIgnoringSafeArea(.all)
    }
    
    private func getDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E"
        return dateFormatter.string(from: entry.date)
    }
    
    private func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        return dateFormatter.string(from: entry.date)
    }
    
    private func getMonth() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: entry.date)
    }
}

