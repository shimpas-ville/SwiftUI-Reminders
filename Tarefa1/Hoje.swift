//
//  Hoje.swift
//  Tarefa1
//
//  Created by Carlos Moraes & Jocemar Nicolodi on 30/10/23.
//

import SwiftUI

struct Buttons {
    var title = ""
    var imageName = ""
    var quantity = ""
    var color: Color
    
    init(title: String, imageName: String, quantity:String, color:Color) {
        self.title = title
        self.imageName = imageName
        self.quantity = quantity
        self.color = color
    }
}

struct Hoje: View {
    var button: Buttons
    var image = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: button.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 35)
                    .imageScale(.small)
                    .clipShape(Circle(), style: FillStyle())
                    .foregroundColor(button.color)
                Spacer()
                Divider()
                Text(button.quantity).bold()
                    .font(.largeTitle)
                    
            }
            
            Text(button.title)
                .font(.headline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20), style: FillStyle())
    }
}
