//
//  volunteering.swift
//  PONDering
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct volunteering: View {
 @State private var showNewTask = false
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255.0, green: 237/255.0, blue: 205/255.0, alpha: 255/255))  .ignoresSafeArea()
            VStack {
                Button("Park Clean Ups") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                            .tint(.white)
                            .background(Rectangle()
                                       .foregroundColor(.lBrown))
                            
                            .cornerRadius(10)
                
                Button("Restoration Projects") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                            .tint(.white)
                            .background(Rectangle()
                                       .foregroundColor(.lBrown))
                            
                            .cornerRadius(10)
            }//vstack
            VStack {
                Button(action: {
                    self.showNewTask = false
                }) {
                Text("X")
            }

                Image("janeandmonkey")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)


                    Text("CLEAN UP @ BOULDER CREEK PARK")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)



                Text("Help clean up a local park by picking up trash around the creek!")


            }//cleanupvstack
            .padding()
               .background(Rectangle()
               .foregroundColor(.darkSage))

            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }//ZStack
        

        
    }//body view
    


}

struct volunteering_Previews: PreviewProvider {
    static var previews: some View {
        volunteering()
    }
}

extension Color {
    static let darkSage = Color(red: 149 / 255, green: 172 / 255, blue: 129 / 255)
    static let lightSage = Color(red: 204 / 255, green: 213 / 255, blue: 174 / 255)
    static let lBrown = Color(red: 212 / 255, green: 163 / 255, blue: 115 / 255)
}
