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
                // MARK: Background
                Group{
                    // MARK: Background gradient
                    LinearGradient(colors: [
                    Color("PSBlue"),
                    .cyan,
                    .cyan
                    ], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    // MARK: Flow overlay
                    VStack{
                        Image("PSFlow")
                            .resizable()
                            .ignoresSafeArea()
                            .frame(maxWidth: size.width, maxHeight: size.height / 4)
                        Spacer() // push it up
                    }
                }
                // MARK: Content
                VStack{
                    // MARK: Top bar
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
                    .shadow(color: Color("PSBlue"), radius: 7)
                    // MARK: Welcome text
                    VStack(alignment: .leading, spacing: 5){
                        Text("Hello, Daniel Spalek")
                        Text("THE FUTURE OF GAMING")
                            .font(.title)
                            .bold()
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                    Spacer()
                    // MARK: Actual content is overlayed on top of a RoundedRectangle
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.white)
                        .ignoresSafeArea()
                        .shadow(color: Color("PSBlue"), radius: 15)
                        .overlay{
                            Rectangle()
                                .foregroundColor(.white)
                                .offset(x: 100)
                        }
    //                    .offset(y: 100)
                    // MARK: Page content
                        .overlay{
                            VStack(alignment: .leading, spacing: 10){
                                Text("Recently Popular")
                                    .font(.caption.bold())
                                    .foregroundColor(.gray)
                                    .padding([.horizontal, .top], 25)
                                HStack{
                                    Text("TOP GAMES")
                                        .font(.title2)
                                        .bold()
                                        .foregroundColor(.black)
                                    Spacer()
                                    Button {
                                        //sort
                                    } label: {
                                        HStack{
                                            Text("Upcoming")
                                            Image(systemName: "chevron.down")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    } // sort
                                    .buttonStyle(.bordered)
                                    .offset(x: 10)

                                } // top games & sort
                                .padding(.horizontal, 25)
                                
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack{
                                        ForEach(sampleGames){ game in
                                            ZStack(alignment: .top){
                                                Image(game.gameImage)
                                                    .resizable()
                                                    .overlay(.ultraThinMaterial)
                                                    .overlay{
                                                        VStack(alignment: .leading){
                                                            Spacer()
                                                            Text(game.gameName)
                                                                .fontWeight(.semibold)
                                                            HStack{
                                                                Text(game.releaseYear)
                                                            }
                                                                .font(.caption)
                                                        }
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                        .padding()
                                                    }
                                                    .foregroundColor(.white)
                                                    .frame(width: size.width / 1.5, height: size.width / 1.2)
                                                    .cornerRadius(20)
                                                    .padding(.leading, 20)
                                                Image(game.gameImage)
                                                    .resizable()
                                                    .frame(width: size.width / 1.5, height: size.width / 1.5)
                                                    .cornerRadius(20)
                                                    .padding(.leading, 20)
                                            }
                                        }
                                    }
                                }
                                .padding(.top, 25)
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top)
//                            .background(.red)
                        }
                    
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
                        Image("PSLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
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
