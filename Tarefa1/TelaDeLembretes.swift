//
//  TelaDeLembretes.swift
//  Tarefa1
//
//  Created by Carlos Moraes & Jocemar Nicolodi on 30/10/23.
//
import Foundation
import SwiftUI

struct TelaDeLembretes: View {
    @State private var temp = ""
    @State var isPresent: Bool = false
    @StateObject var viewModel = TaskListViewModel()
    @State private var newTaskTitle = ""
    @Environment(\.dismiss) var dismiss
    init() {
        UINavigationBar.setNavigationTitleColor(to: .orange)
    }
    
    
    var body: some View {
        
        ZStack {
            VStack {
                NavigationView {
                    List {
                        ForEach(viewModel.tasks) { task in
                            HStack {
                                Button(action: { viewModel.toggleTaskCompleted(task: task) }) {
                                    Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                }
//                                TextField("Notes", text:$temp)
//                                    .frame(height:100)
                                Text(task.title)
                                    .strikethrough(task.isCompleted)
                                    //.frame(height:100)
                                Spacer()
                                Button(action: { viewModel.removeTask(task: task) }) {
                                    Image(systemName: "trash")
                                }
                            }
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }
            Spacer()
            
                .navigationTitle("Lembretes")
                .foregroundColor(.orange)
            
            
                .toolbar{
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            HStack{
                                Image(systemName: "chevron.left")
                                Text("Lists")
                            }
                        })
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "square.and.arrow.up").foregroundStyle(.blue)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Spacer()
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Spacer()
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "ellipsis.circle").foregroundStyle(.blue)
                            .offset(y: 2)
                    }
                    
                }
                .navigationBarBackButtonHidden(true)
            
            VStack{
                Spacer()
                HStack {
                    Image(systemName: "plus.circle.fill").imageScale(.large).foregroundColor(.orange)
                    Button("Novo Lembrete") {
                        //Text("Novo Lembrete").font(.title3.bold()).foregroundColor(.orange)
                        viewModel.addTask(title: newTaskTitle)
                        newTaskTitle = ""
                    }
                    .font(.title3.bold())
                    .foregroundColor(.orange)
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
}


