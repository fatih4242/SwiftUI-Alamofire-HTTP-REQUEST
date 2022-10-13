//
//  SwiftUIView.swift
//  SwiftUIAlamofire
//
//  Created by Fatih Toker on 13.10.2022.
//

import SwiftUI
import Kingfisher

struct SwiftUIView: View {
    let url : String?
    var body: some View {
        GeometryReader{geometry in
            KFImage(URL(string: url ?? ""))
                .resizable()
                .frame(height: geometry.size.height * 0.5, alignment: .center)
        }
    }
}

