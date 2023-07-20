//
//  beaches.swift
//  PONDering
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct beaches: View {
 @State private var lbWash = false
 @State private var cannon = false
 @State private var paradise = false

    
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255.0, green: 237/255.0, blue: 205/255.0, alpha: 255/255))  .ignoresSafeArea()
            VStack {
                Text("Beaches")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor( Color(red: 212 / 255, green: 163 / 255, blue: 115 / 255))
                
                Button(action: {
                    
                    withAnimation(.linear(duration: 1)) {
                        
                        self.lbWash = true
                        self.cannon = false
                        self.paradise = false
                    }
                    
                }, label: {
                    Text("Long Beach (Washington)")
                        .font(.title2)
                })
                .padding()
                .tint(.white)
                .background(Rectangle()
                    .foregroundColor(Color(red: 212 / 255, green: 163 / 255, blue: 115 / 255)))
                .cornerRadius(10)
                
                Button(action: {
                    
                    withAnimation(.linear(duration: 1)) {
                        
                        self.lbWash = false
                        self.cannon = true
                        self.paradise = false
                        
                    }
                    
                }, label: {
                    Text("Cannon Beach (Oregon)")
                        .font(.title2)
                })
                .padding()
                .tint(.white)
                .background(Rectangle()
                    .foregroundColor(Color(red: 212 / 255, green: 163 / 255, blue: 115 / 255)))
                
                .cornerRadius(10)
                
                Button(action: {
                    
                    withAnimation(.linear(duration: 1)) {
                        
                        self.lbWash = false
                        self.cannon = false
                        self.paradise = true
                        
                    }
                    
                }, label: {
                    Text("Paradise Beach (California)")
                        .font(.title2)
                })
                .padding()
                .tint(.white)
                .background(Rectangle()
                    .foregroundColor(Color(red: 212 / 255, green: 163 / 255, blue: 115 / 255)))
                
                .cornerRadius(10)
            }//vstack
            if $lbWash.wrappedValue {
                popUpView4()
            }//popup4
            
            if $cannon.wrappedValue {
                popUpView5()
            }//popup5
            
            if $paradise.wrappedValue {
                popUpView6()
            }//popup6
            
        }//ZStack
        
    } //body view
    
    private func popUpView4() -> some View {
        ZStack () {
            VStack {
                Button(action: {
                    withAnimation {
                        self.lbWash = false
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
                Text("Long Beach (Washington)")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("While it may not be the longest beach in teh whole world, it sure feels like it on these 28 miles of pristine silver sand! This beach is known for its fantastic whale and eagle watching and beautiful biking trails surrounding its coast.")
            }//Vstack
            .padding()
            .background(Rectangle()
                .foregroundColor( Color(red: 149 / 255, green: 172 / 255, blue: 129 / 255)
                                ))}
        .cornerRadius(15)
        .shadow(radius: 15)
        .padding()
        }//privatefuncforparkClean
    

    private func popUpView5() -> some View {
        ZStack () {
            VStack {
                Button(action: {
                    withAnimation {
                        self.cannon = false
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
                     .padding(1)
                Text("Cannon Beach (Oregon)")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                Text("Help plant local shrubs and trees around the wetlands area this Saturday! All ages are welcome. RSVP at this link.")
            }//Vstack
            .padding()
            .background(Rectangle()
            .foregroundColor((Color(red: 149/255, green: 172/255, blue: 129/255))))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()

        }//ZStack
    }//privatefuncviewfortreeplanting

    private func popUpView6() -> some View {
        ZStack () {
            VStack {
                Button(action: {
                    withAnimation {
                        self.paradise = false
                        
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
                Image("paradiseCove")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding(1)
                Text("Paradise Beach (California)")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                      .padding(1)
                VStack(alignment: .leading){
                    Text("STUFF TO DO HERE")
                        .font(.title3)
                       // .multilineTextAlignment(.leading)
                        .padding(1)
                }
                .padding(10)
            }//Vstack
            .padding()
            .background(Rectangle()
            .foregroundColor((Color(red: 149/255, green: 172/255, blue: 129/255)))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        )}//ZStack
    }//privatefuncviewfortreeplanting




} // end of struct

struct beaches_Previews: PreviewProvider {
    static var previews: some View {
        beaches()
    }
}

