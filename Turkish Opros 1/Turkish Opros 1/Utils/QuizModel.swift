//
//  QuizModel.swift
//  Turkish Opros 1
//
//  Created by Mac on 18.03.2024.
//

import Foundation
import SwiftUI

struct QuizModel {
    var quiz: String
    var answer: [String]
}

let allFinanceQuiz = [
    QuizModel(quiz: "Hisse senedi nedir?", answer: ["Bir şirketin parçası", "Menkul Kıymetler", "Gelir araçları"]),
    QuizModel(quiz: "ROI ne anlama geliyor?", answer: ["Yatırım getirisi", "Temettüler", "Hisse fiyatı büyümesi"]),
    QuizModel(quiz: "Enflasyon nedir?", answer: ["Satın alma gücünde azalma", "Pazar durgunluğu", "Vergi artışı"]),
    QuizModel(quiz: "Ne tür vergiler vardır?", answer: ["KDV, gelir, karlar", "Temettüler, hisseler", "Tek vergi, emlak vergis"]),
    QuizModel(quiz: "Yatırım portföyü nedir?", answer: ["Varlıklar kümesi", "Tasarruf", "Krediler"]),
    QuizModel(quiz: "ETF nedir?", answer: ["Yatırım fonu", "Menkul Kıymetler", "Endeks varlığı"]),
    QuizModel(quiz: "Çeşitlendirme nedir?", answer: ["Risk tahsisi", "Kâr maksimizasyonu", "Tahvillere yatırım yapmak"]),
    QuizModel(quiz: "Uzun vadeli yatırım ne anlama gelir?", answer: ["Uzun vadeli yatırım", "Kısa vadeli işlemler", " Borsada spekülasyon"]),
    QuizModel(quiz: "Bir para biriminin döviz kurunu etkileyen faktörler nelerdir?", answer: ["Ekonomi, politika, talep", "Enflasyon, faiz oranları", "İthalat, ihracat, istikrar"]),
    QuizModel(quiz: " Kredi notu nedir?", answer: ["Ödeme gücü değerlendirmesi", "Borç yükümlülükleri", "Yatırım durumu"]),
]

let allBuisnessQuiz = [
    QuizModel(quiz: "ROI neleri içerir?", answer: ["Kâr", "Yatırım", "Sonuç"]),
    QuizModel(quiz: "SWOT'u etkileyen faktörler nelerdir?", answer: ["Güçlü Yönler", "Tehditler", "Fırsatlar"]),
    QuizModel(quiz: "KPI ile ne kastedilmektedir?", answer: ["Anahtar performans göstergeleri", "Başarı", "Ölçüm"]),
    QuizModel(quiz: "Pazarlamada hangi stratejiler kullanılır?", answer: ["Fiyatlandırma", "Ürün", "Reklam"]),
    QuizModel(quiz: "Başarılı İK için önemli olan nedir?", answer: ["İşe alma", "Motivasyon", "Elde tutma"]),
    QuizModel(quiz: "Ne tür şirketler vardır?", answer: ["Şirketler", "Start-up'lar", "Franchise'lar"]),
    QuizModel(quiz: "Bir iş planı neleri içerir?", answer: ["Strateji", "Finans", "Pazarlama"]),
    QuizModel(quiz: "Hangi finansman türleri tercih edilir?", answer: ["Kredi", "Yatırım", "Sübvansiyonlar"]),
    QuizModel(quiz: "Başarılı bir liderlik için ne önemlidir?", answer: ["Vizyon", "İlham", "Yönetim"]),
    QuizModel(quiz: "Ne tür pazarlar vardır?", answer: ["Tüketici", "Finansal", "Uzmanlaşmış"]),
]

struct QuizItem : View {
    var model: QuizModel
    var onClick: () -> Void
    
    
    @State var state: Int = -1
    
    var body: some View {
        VStack {
            Text(model.quiz)
                .font(.title2)
                .bold()
                .multilineTextAlignment(.center)
            
            Divider()
            
            StatusButton(
                value: model.answer[0],
                onClick: {
                    
                    if state == -1 {
                        onClick()
                    }
                    state = 0
                    
                },
                isChecked: state == 0)
            StatusButton(
                value: model.answer[1],
                onClick: {
                    if state == -1 {
                        onClick()
                    }
                    state = 1
                },
                isChecked: state == 1
            )
            StatusButton(
                value: model.answer[2],
                onClick: {
                    if state == -1 {
                        onClick()
                    }
                    state = 2
                },
                isChecked: state == 2
            )
            
        }
        .frame(width: 300, height: 300)
        .background(Color.gray.opacity(0.4))
        .cornerRadius(15)
        .padding([.vertical], 20)
    }
}
