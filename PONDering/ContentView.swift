//
//  ContentView.swift
//  PONDering
//
//  Created by scholar on 7/17/23.
//
// yay

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 149/255.0, green: 172/255.0, blue: 129/255.0, alpha: 255))
                .ignoresSafeArea()
            VStack {
                Image("City Escapes Placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Button("Volunteering") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }//volunteering button
                Button("Parks and Reserves") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }//parks button
                Button("Beaches") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }//beaches button
                Button("Picnic Spots") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }//Picnic button
                
                
            }//Vstack
            
            
        }//Zstack
    }//bodyview
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//THIS IS MADELINE MAKING A COMMENT!!!!!!!
