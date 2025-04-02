//
//  TLButton.swift
//  TodoApp
//
//  Created by นางสาวพรนัชชา ประทีปสังคม on 2/4/2568 BE.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.green)
                Text("Create Account")
                    .foregroundColor(.white)
                    .bold()
                    .padding(5)
    }
}

#Preview {
    TLButton(
        title: <#T##String#>, background: <#T##Color#>, action: <#T##() -> Void#>
    )
}
