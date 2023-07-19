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
                                        Text("Hayes Valley Community Tree Planting")
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
                                        Text("Invasive Plant Removal at Oakland's Sibley Volcanic Regional Park")
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
                Image("boulderPark")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .cornerRadius(15)
                Text("Hayes Valley Community Tree Planting")
                    .font(.title)
                      .fontWeight(.bold)
                      .multilineTextAlignment(.center)
                      .padding(1)
                VStack(alignment: .leading){
                    Text("Collaborate with other volunteers to plant 5 new sidewalk trees, helping to expand tree canopy coverage and its benefit trees to the community!. No experience is necessary, just a willingness to get your hands in the dirt! Light lunch and snacks will be provided. ")
                        .font(.title3)
                        .padding(1)
                    
                    Text("Where: Exact location will provided by organization after sign-up, will be in the Lower Haight/Hayes Valley community")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(1)
                    Text("When: Saturday August 19th from 9 am to 12:30 pm")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    
                }
                .padding(10)
            }//Vstack
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
            Image("boulderPark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding(1)
            Text("Invasive Plant Removal at Oakland's Sibley Volcanic Regional Park")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(1)
            VStack(alignment: .leading){
                Text("Help with invasive plant removal and grassland restoration work, all tools are povided. This event is open to anyone 13+. Make sure to RSVP using this link: https://apply.ebparks.org/custom/501/opp_details/2033")
                    .font(.title3)
                    .padding(1)
                
                Text("Where: Meet at the Old Tunnel Road Staging Area")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(1)
                Text("When: The second Saturday of every month from 9:20 am to 12 pm")
                    .font(.title3)
                    .fontWeight(.bold)
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
                        .padding(1)
                    
                    Text("Where: Meet at the the Hayward Shoreline Interpretive Center")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(1)
                    Text("When: Saturday August 12th from 11 am to 2 pm")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    
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
}
