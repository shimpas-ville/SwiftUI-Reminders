//
//  NewReminder.swift
//  Tarefa1
//
//  Created by Foundation17 on 31/10/23.
//

import Foundation
import SwiftUI

struct NewReminder: View {

    @State private var title = ""
    @State private var notes = ""
    @State private var isSubscribed = false
    @State private var selectedOption = 0
//    @Binding var isPresented: Bool
    @FocusState private var isTextFieldFocused: Bool
    let options = ["Option 1", "Option 2", "Option 3", "Option 4"]
    @Environment(\.dismiss) var dismiss
    
    init() {
        UINavigationBar.setNavigationTitleColor(to: .black)
    }
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $title).focused($isTextFieldFocused)
                        .onAppear {
                            isTextFieldFocused = true
                        }
                    //.focused($isFocused)
                    
                    TextField("Notes", text: $notes)
                        .frame(height:100)
                }
                
                Section(/*header: Text("Select an Option")*/) {
                    Picker("Details", selection: $selectedOption) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Text(options[index])
                        }
                    }
                } footer: {
                    EmptyView()
                }
                .padding(.top, -6)
                
                
                Section(/*header: Text("Select an Option")*/) {
                    Picker("List", selection: $selectedOption) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Text(options[index])
                        }
                    }
                } footer: {
                    EmptyView()
                }
                .padding(.top, -6)
            }
            
            .navigationTitle("New Reminder").background(.gray)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Add") {
                        //
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                       dismiss()
                    }
                }
                
            }
            
        }
        .background(.gray)
    }
}

#Preview {
    MainView()
}
