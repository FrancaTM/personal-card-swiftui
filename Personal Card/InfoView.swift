//
//  InfoView.swift
//  Personal Card
//
//  Created by Tulio Marcos Franca on 26/03/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
        
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.green)
                Text(text).bold().foregroundColor(Color("info color"))
            }).padding(.all)
    }
}
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Teste", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
