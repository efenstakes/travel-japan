//
//  DestinationDetailsPageView.swift
//  tris_travel_japan
//
//  Created by MAC on 11/2/21.
//

import SwiftUI

struct DestinationDetailsPageView: View {
    let destination: Destination
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                
                // navigation
                HStack(alignment: .top, spacing: 8) {
                    
                    VStack(alignment: .leading) {
                        
                        Text("\(destination.name)")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black.opacity(0.7))
                        
                        
                        Text("\(destination.city), \(destination.country)")
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.black.opacity(0.7))
                            .frame(alignment: .leading)
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 16, alignment: .center)
                        .foregroundColor(.gray)
                        .padding(.top, 16)
                    
                }
                .padding(.vertical, 32)
                .padding(.horizontal)
                
                
                // image
                HStack {
                    
                    
                    ZStack(alignment: .topLeading) {
                        
                        Image(destination.image)
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: geo.size.width*0.6,
                                height: 360,
                                alignment: .center
                            )
                            .cornerRadius(24)
                        
                        
                        Image(systemName: "arrow.up.backward.and.arrow.down.forward")
                            .resizable()
                            .frame(width: 16, height: 16, alignment: .center)
                            .padding()
                            .background(Color.white.opacity(0.6))
                            .clipShape(Circle())
                            .padding()
                        
                    }
                    
                    VStack(alignment: .leading) {
                        
                        
                        VStack(alignment: .leading, spacing: 4) {
                            
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16, alignment: .center)
                                .foregroundColor(.white)
                                .padding(12)
                                .background(Color.orange.opacity(0.6))
                                .clipShape(
                                    Circle()
                                )
                                .padding(.bottom, 4)
                            
                            Text("4.8")
                                .font(.body)
                                .bold()
                            
                            Text("2,568 rvs")
                                .font(.caption)
                            
                        }
                        
                        Spacer()
                        
                        
                        VStack(alignment: .leading, spacing: 4) {
                            
                            Image(systemName: "arrow.triangle.swap")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16, alignment: .center)
                                .foregroundColor(.white)
                                .padding(12)
                                .background(Color.purple.opacity(0.6))
                                .clipShape(
                                    Circle()
                                )
                                .padding(.bottom, 4)
                            
                            Text("5KM")
                                .font(.body)
                                .bold()
                            
                            Text("Direction")
                                .font(.caption)
                            
                        }
                        
                        Spacer()
                        
                        
                        VStack(alignment: .leading, spacing: 4) {
                            
                            Image(systemName: "cloud.rain.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16, alignment: .center)
                                .foregroundColor(.white)
                                .padding(12)
                                .background(Color.red.opacity(0.6))
                                .clipShape(
                                    Circle()
                                )
                                .padding(.bottom, 4)
                            
                            Text("16 C")
                                .font(.body)
                                .bold()
                            
                            Text("Raining")
                                .font(.caption)
                            
                        }
                        
                    }
                    .padding(.leading)
                    .frame(height: 360)
                    
                    
                }
                .clipped()
                
                
                HStack {
                    
                    VStack(spacing: 8) {
                        Image(systemName: "square.grid.2x2")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                        
                        Text("Category")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 8) {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 28, height: 24, alignment: .center)
                        
                        Text("Home")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 8) {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                        
                        Text("Calendar")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                }
                .foregroundColor(.secondary)
                .padding(.vertical, 24)
                .padding(.horizontal)
                
                
                // bottom info
                HStack{
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("Just check in")
                            .font(.caption)
                            .bold()
                        
                        LazyHStack(alignment: .center) {
//                            ForEach(0..<5) { num in
//                                Image("\(num+1)")
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: 36, height: 36, alignment: .center)
//                                    .clipShape(Circle())
//                                    .overlay(
//                                        Circle().stroke(Color.white, lineWidth: 2)
//                                    )
//                                    .offset(
//                                        x: num == 0 ? 0 : CGFloat(-32 + (num*10))
//                                    )
//                                    .animation(.spring())
//                            }
                            Image("1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 2)
                                )
                                .offset( x: 0 )
                                .animation(.spring())
                            Image("2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 2)
                                )
                                .offset( x: -20 )
                                .animation(.spring())
                            Image("3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 2)
                                )
                                .offset( x: -36 )
                                .animation(.spring())
                            Image("4")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 2)
                                )
                                .offset( x: -50 )
                                .animation(.spring())
                            Image("5")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 36, height: 36, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 2)
                                )
                                .offset( x: -68 )
                                .animation(.spring())
                            Text("2M")
                                .font(.caption)
                                .bold()
                                .frame(width: 36, height: 36, alignment: .center)
                                .background(Color.pink.opacity(0.6))
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 2)
                                )
                                .offset( x: -80 )
                                .animation(.spring())
                        }
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Watch")
                            .font(.caption)
                            .bold()
                        
                        Text("intro video")
                            .font(.caption)
                            .bold()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 20, alignment: .center)
                            .foregroundColor(.yellow)
                    }
                    .frame(minWidth: 80, alignment: .leading)
                    .frame(maxHeight: .infinity)

                    
                }
                .ignoresSafeArea(.all)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .padding(.vertical, 40)
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(24)
                
                
            }
//            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    Text("Destinations")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black.opacity(0.7))
                    .padding(.top, 88),
                trailing:
                    Image(systemName: "chevron.right")
                        .frame(width: 12, height: 12, alignment: .center)
                        .padding(.top, 88)
                        .foregroundColor(.gray)
            )
            
        }
    }
}
