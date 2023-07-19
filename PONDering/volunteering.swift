//
//  volunteering.swift
//  PONDering
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct volunteering: View {
 @State private var parkClean = false
 @State private var treePlant = false
 @State private var animals = false

    
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255.0, green: 237/255.0, blue: 205/255.0, alpha: 255/255))  .ignoresSafeArea()
            VStack {
               
                
                Button(action: {
                                    
                                    withAnimation(.linear(duration: 1)) {
                                        
                                        self.parkClean = true
                                        self.treePlant = false
                                        self.animals = false
                                        
                                    }
                                    
                                    }, label: {
                                    Text("Park Clean-Ups")
                                })
                .padding()
                            .tint(.white)
                            .background(Rectangle()
                                       .foregroundColor(.lBrown))
                            
                            .cornerRadius(10)
                
                Button(action: {
                                    
                                    withAnimation(.linear(duration: 1)) {
                                        
                                        self.parkClean = false
                                        self.treePlant = true
                                        self.animals = false
                                        
                                    }
                                    
                                    }, label: {
                                    Text("Tree Plantings")
                                })
                .padding()
                            .tint(.white)
                            .background(Rectangle()
                                       .foregroundColor(.lBrown))
                            
                            .cornerRadius(10)
                
                Button(action: {
                                    
                                    withAnimation(.linear(duration: 1)) {
                                        
                                        self.parkClean = false
                                        self.treePlant = false
                                        self.animals = true
                                        
                                    }
                                    
                                    }, label: {
                                    Text("Animal Conservation")
                                })
                .padding()
                            .tint(.white)
                            .background(Rectangle()
                                       .foregroundColor(.lBrown))
                            
                            .cornerRadius(10)
            }//vstack
            if $parkClean.wrappedValue {
                popUpView1()
            }//popup1
            
            if $treePlant.wrappedValue {
                popUpView2()
            }//popup2
            
            if $animals.wrappedValue {
                popUpView3()
            }//popup3
            
            //BEGINNING OF HIDDEN CLEAN UP RECTANGLE
            
            
//            VStack {
//
//                Button("X") {
//
//                }
//
//                Image("")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(15)
//
//
//                Text("")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
//
//
//
//                Text("")
//
//
//            }//cleanupvstack
//            .padding()
//            .background(Rectangle()
//               .foregroundColor(.darkSage))
//
//
//            .cornerRadius(15)
//            .shadow(radius: 15)
//            .padding()
            
            //END OF HIDDEN CLEAN UP RECTANGLE
            
            
        }//ZStack
        
        
    }//body view
    
    private func popUpView1() -> some View {
        ZStack () {
            VStack {
                Button(action: {
                    withAnimation {
                        self.parkClean = false
                    }
                }, label: {
                    Text("X")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                })
                Image("boulderPark")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                Text("CLEAN UP @ BOULDER CREEK PARK")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                Text("Help clean up a local park by picking up trash around the creek!")
            }//Vstack
            .padding()
           .background(Rectangle()
            .foregroundColor(.darkSage))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()

        }//ZStack
    }//privatefuncviewforparkClean

    private func popUpView2() -> some View {
        ZStack () {
            VStack {
                Button(action: {
                    withAnimation {
                        self.treePlant = false
                    }
                }, label: {
                    Text("X")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                })
                Image("boulderPark")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                Text("TREE PLANTING @ EVELYN SCHIFFLER PARK")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                Text("Help plant local shrubs and trees around the wetlands area this Saturday! All ages are welcome. RSVP at this link.")
            }//Vstack
            .padding()
           .background(Rectangle()
            .foregroundColor(.darkSage))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()

        }//ZStack
    }//privatefuncviewfortreeplanting

    private func popUpView3() -> some View {
        ZStack () {
            VStack {
                Button(action: {
                    withAnimation {
                        self.animals = false
                    }
                }, label: {
                    Text("X")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                })
                Image("boulderPark")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                Text("Bird Viewing at El Dorado Nature Reserve")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                Text("Learn about locals birds like pigeons from regional specialists at this beginner-friendly bird watching event.")
            }//Vstack
            .padding()
           .background(Rectangle()
            .foregroundColor(.darkSage))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()

        }//ZStack
    }//privatefuncviewfortreeplanting
    
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
