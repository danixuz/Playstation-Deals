//
//  Home.swift
//  Playstation-Deals
//
//  Created by Daniel Spalek on 30/07/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            ZStack{
                LinearGradient(colors: [
                Color("PSBlue"),
                .cyan
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack{
                    HStack(spacing: 50){
                        Image(systemName: "line.3.horizontal")
                            .font(.title)
                        Text("PlayStation Network")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Hello, Daniel Spalek")
                        Text("THE FUTURE OF GAMING")
                            .font(.title)
                            .bold()
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background{
                        Color.red
                    }
                    .padding()
                    Spacer()
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.white)
                        .ignoresSafeArea()
                        .overlay{
                            Rectangle()
                                .foregroundColor(.white)
                                .offset(x: 100)
                        }
    //                    .offset(y: 100)
                    
                }
                //putting it on top of everything.
                // in a VStack so we can push it down.
                VStack{
                    Spacer()
                    MenuBar()
                }
            }
        }
    }
    
    @ViewBuilder
    func MenuBar() -> some View{
        HStack(spacing: 50){
            Group{
                Image(systemName: "house.fill")
                    .foregroundColor(Color("PSBlue"))
                Image(systemName: "bag")
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 40, height: 40)
                    .overlay{
                        Image(systemName: "playstationlogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("PSBlue"))
                    }
                    .background{
                        Circle()
                            .foregroundColor(Color("PSBlue"))
                            .frame(width: 50, height: 50)
                            .blur(radius: 5)
                            .shadow(radius: 10)
                    }
                Image(systemName: "message")
                Image(systemName: "bell")
                
            }
            .font(.title3)
            .foregroundColor(.gray)
            .offset(y: 10)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 25)
        .background{
            Color.white
                .ignoresSafeArea()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
