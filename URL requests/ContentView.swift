//
//  ContentView.swift
//  Twitter_clone_Firebase
//
//  Created by Umair Riaz on 15/08/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: Network

    var body: some View {
        ScrollView {
            Text("All users")
                .font(.title)
                .bold()

            VStack{
                ForEach(network.users) { user in
                    HStack(alignment:.top) {
                        Text("\(user.id)")

                        VStack(alignment: .leading) {
                            Text(user.name)
                                .bold()

                            Text(user.email.lowercased())

                            Text(user.phone)
                        }
                    }
                    .frame(width: 340, alignment: .leading)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                    .cornerRadius(20)
                }
            }
        }
        .onAppear {
            network.getUsers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Network())
    }
}
