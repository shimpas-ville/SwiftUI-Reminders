//
//  ContentView.swift
//  Tarefa1
//
//  Created by Carlos Moraes & Jocemar Nicolodi on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct MainView: View {
    
    @State var isPresented: Bool = false
    @State var searchText = ""
    
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                ScrollView(showsIndicators:false) {
                    
                    VStack(alignment: .leading, spacing: 16) {
                        HStack (spacing: 16) {
                            Hoje(button: Buttons(title: "Hoje", imageName:"calendar.circle.fill",quantity:"1", color: .blue))/*.foregroundColor(.orange)*/
                            Hoje(button: Buttons(title: "Programados", imageName:"calendar.circle.fill",quantity:"1", color: Color("specialColor")))/*.foregroundColor(.red)*/
                                
                        
                        }
                        
                        HStack (spacing: 16) {
                            Hoje(button: Buttons(title: "Todos", imageName:"tray.circle.fill",quantity:"9", color: .black))
                            Hoje(button: Buttons(title: "Concluídas", imageName:"checkmark.circle.fill",quantity:"7", color: Color("specialGray")))
                            
                        }
                        
                        
                        Text("My Lists")
                            .padding(.leading, 16)
                            .font(.title2.bold())
                        
                        
                        NavigationLink(destination: TelaDeLembretes()) {
                            HStack {
                                Icon()
                            }
                        }
                    }
                    .padding()
                }
                .searchable(text: $searchText)
                .background(Color(uiColor: UIColor.systemGroupedBackground))
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Text("Editar").foregroundStyle(.blue)
                    }
                }
                VStack{
                    Spacer()
                    HStack {
                        HStack {
                            Image(systemName: "plus.circle.fill").imageScale(.large).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("Novo Lembrete").font(.title3.bold()).foregroundColor(.blue)
                            
                        }
                        .onTapGesture {
                            isPresented = true
                        }
                        .sheet(isPresented: $isPresented, content: {
                            NewReminder()
                        })
                        Spacer()
                        Text("Adicionar Lista").foregroundColor(.blue)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    MainView()
}
