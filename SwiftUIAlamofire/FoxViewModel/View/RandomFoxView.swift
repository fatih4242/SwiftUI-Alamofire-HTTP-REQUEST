//
//  RandomFoxView.swift
//  SwiftUIAlamofire
//
//  Created by Fatih Toker on 13.10.2022.
//

import SwiftUI
import Kingfisher


struct RandomFoxView: View {
    private let title : String = "My Fox"
    
    @StateObject var foxViewModel : FoxViewModel = FoxViewModel(service: FoxService())
    
    
    var body: some View {
        VStack{
            HStack {
                Text(title)
                    .font(.title)
                  
                Spacer()
                Button("Refresh"){
                    
                }
            }.padding(.all)
            if foxViewModel.isCompleted ?? false{
                SwiftUIView(url: foxViewModel.fox?.image ?? "")
                
            }else{
                VStack{
                    Text("false")

                }
            }
            Spacer()

        }
        
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}
