//
//  WebViewModel.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import Foundation

class WebViewModel: ObservableObject{
    @Published var url:URL!
    @Published var isReaderMode:Bool = true
    @Published var goToPage:Bool = false
    
    @Published var goBack:Bool = false
    @Published var goForward:Bool = false
}
