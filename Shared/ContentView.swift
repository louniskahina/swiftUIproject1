//
//  ContentView.swift
//  Shared
//
//  Created by Kahina Lounis on 22/12/2021.
//
//
//what's new :
//rounded corners using button style Modifier
//button roles, to charaterise the buttons purpose
//configuration dialogs sililar to UIKit's action sheets
//Toggle buttons to manage state



///a new bordered style allos us to make rounded buttons by .contolSize modifier and .controlProminence allows for further styling


///the system uses the button's role to style the button appropriately in every context eg destructive & cancel

///configuration  dialogs are similar to action sheets in UIKIT this present confirmation dialog


/// Toggle have a new style called .button meaning these can be toggled on/off
///
///
///
///
import SwiftUI

struct ContentView: View {
    @State private var isPresented = true
    @State private var isOn = true
    @State private var isOff = true
    
    
    var body: some View {
        //Self._printChanges()
        let _ = Self._printChanges()
        VStack {
            
        Button(role: .destructive) {
            //actions
        } label: {
            Text("delete")
        }
        .buttonStyle(.bordered)
        //.tint(.mint)
        .controlSize(.large)
        //.controlProminence(.increased)
        
        Button(role: .cancel) {
            //actions
        } label: {
            Text("cancel")
        }
        .buttonStyle(.bordered)
        //.tint(.teal)
        .controlSize(.regular)
        
        //.controlProminence(.standard)
//            By setting the value of controlProminence to .increased, we are conveying that this button is important and represents the primary action button on the current view.
        
        
        Button {
            isPresented.toggle()
        }label: {
            Text("Show dialogue")
                .foregroundColor(.white)
        }
        .buttonStyle(.bordered)
        .padding()
        .confirmationDialog("confirm", isPresented: $isPresented) {
            Button(role: .destructive) {
                ///do something
            } label: {
                Text("Log out")
            }
        }
        
        //toggle on
        Toggle(isOn: $isOn) {
            Image(systemName: "heart.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
        }
        .toggleStyle(.button)
        .tint(.mint)
        
        //togle off
        Toggle(isOn: $isOff) {
            Image(systemName: "heart.circle")
                .resizable()
                .frame(width: 40, height: 40)
        }
        .toggleStyle(.button)
        .tint(.mint)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

