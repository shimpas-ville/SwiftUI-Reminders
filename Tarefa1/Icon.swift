//
//  Icon.swift
//  Tarefa1
//
//  Created by Carlos Moraes & Jocemar Nicolodi on 30/10/23.
//

import SwiftUI

struct Icon: View {
    var body: some View {
        HStack {
            Image(systemName: "list.bullet.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 35)
                .imageScale(.small)
                .clipShape(Circle(), style: FillStyle())
                .foregroundColor(.orange)
            Text("Lembretes").tint(.black)
            Spacer()
            HStack {
                Text("0").tint(.gray)
                Image(systemName: "chevron.right").foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 14), style: FillStyle())
    }
}

#Preview {
    Icon()
}
