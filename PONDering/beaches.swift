//
//  beaches.swift
//  PONDering
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct beaches: View {
 @State private var parkClean = false
 @State private var treePlant = false
 @State private var animals = false

    
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255.0, green: 237/255.0, blue: 205/255.0, alpha: 255/255))  .ignoresSafeArea()
            VStack {
                Text("Volunteering")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.lBrown)
                
                Button(action: {
                                    
                                    withAnimation(.linear(duration: 1)) {
                                        
                                        self.parkClean = true
                                        self.treePlant = false
                                        self.animals = false
                                        
                                    }
                                    
                                    }, label: {
                                        Text("Long Beach (Washington")
                                            .font(.title2)
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
                                        Text("Evelyn Schiffler Park Tree Planting")
                                            .font(.title2)
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
                                        Text("Foster City Bird Watching")
                                            .font(.title2)
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
                    HStack {
                Spacer()
                        Image("theX")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 0.0)
                            .frame(width: 30, height: 30)
                    }//Hstack
                   

                })
                Image("longBwash")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                Text("Long Beach Washington")
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
                    HStack {
                Spacer()
                        Image("theX")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 0.0)
                            .frame(width: 30, height: 30)
                    }//Hstack
                    .padding(1)
                })
                Image("longBwash")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                     .padding(1)
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
                    HStack {
                Spacer()
                        Image("theX")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 0.0)
                            .frame(width: 30, height: 30)
                    }//Hstack
                })
                Image("tern")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                Text("Bird Watching at Hayward Regional Shoreline")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                      .padding(1)
                VStack(alignment: .leading){
                    Text("Learn about the birds that frequent the river corridors, woodlands and  wetlands that encircle San Francisco Bay from regional specialists at this beginner-friendly bird watching event. You'll have the chance to see species like Terns, Sanndpipers, and the rare Peregrine Falcon and Great Blue Herons.")
                        .font(.title3)
                       // .multilineTextAlignment(.leading)
                        .padding(1)
                    
                    Text("Where: Meet at the the Hayward Shoreline Interpretive Center")
                        .font(.title3)
                        .fontWeight(.bold)
                     //   .multilineTextAlignment(.leading)
                        .padding(1)
                    Text("When: Saturday August 12th from 11 am to 2 pm")
                        .font(.title3)
                        .fontWeight(.bold)
                       // .multilineTextAlignment(.leading)
                    
                    
                }
                .padding(10)
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

struct beaches_Previews: PreviewProvider {
    static var previews: some View {
        volunteering()
    }
}

