//
//  TestView.swift
//  FastlaneTestProject
//
//  Created by Josip Glasovac on 16.12.2021..
//

import SwiftUI

struct TestView: View {
    @StateObject var viewModel = TestViewModel()

    var body: some View {
        Text("Hello, world!")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
