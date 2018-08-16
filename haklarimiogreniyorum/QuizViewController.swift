//
//  QuizViewController.swift
//  haklarimiögreniyorum
//
//  Created by Elif Tultay on 8.04.2018.
//  Copyright © 2018 eliftultay. All rights reserved.
//

import UIKit

struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class QuizViewController: UIViewController {
    
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet var Buttons: [UIButton]!
    
    var QSet1 = [Question]()
    
    var QSet2 = [Question]()
    
    var QNumber  = Int()
    
    var AnswerNumber = Int()
    
    var Answered = 0

    var select = Int()
    
    //var delete = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        QSet1 = [Question(Question: "8 yaşındaki Lema, ailesiyle birlikte göçebe bir yaşam sürdürmektedir. Lema’nın eğitimini alması için devlet göçebe yaşam süren öğrencilere eğitim almaları için gerekli ulaşımı sağlamaktadır. Bu durumda çocuk haklarında hangi hak devlet tarafından önemsenmiştir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Kalıtım hakkı", "d) Korunma hakkı "], Answer:1),
                 Question(Question: "İlkokul 4.sınıf öğretmeni sınıf ortamında öğrencilerin düşüncelerini özgürce ifade edebileceği çocuk mahkemesini oluşturmuştur. Bu durumda öğrenciler hangi haktan faydalanmıştır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "23 Nisan da okul müdürü koltuğuna oturan 9 yaşındaki Ahmet, okul içerisinde arkadaşlarıyla birlikte oynayacağı bir oyun parkı istemedektedir. Ahmet’in bu isteği hangi çocuk hakkına sahip olduğunu ifade eder?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "Küçük bir kasabada yaşayan İrem kitap okumayı çok sevmektedir. İrem’in bulunduğu kasaba da kitap bulabileceği bir kütüphane açılmıştır. Bu durumda devlet çocuklara hangi hakkı sağlamış olur ?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:1),
                 Question(Question: "Emir, aile içinde alınan kararlarda düşüncelerini ifade etmek istediğinde dikkate alınmamaktadır. Emir’in ailesi tarafından hangi konuda hakkı göz ardı edilmektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "Devlet zorla çalıştırılan çocuklara müdahale  ederek küçük yaştaki çocukları çalıştıran ailelerin çocuklarını koruma altında almaktadır. Bu durumda çocuklar hangi haktan faydalanmıştır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:2),
                 Question(Question: "Küçük bir ilçede yaşayan çocuklar için ilçe içerisinde sosyal aktivitelerin yapıldığı bir merkez kurulmuştur. Devlet tarafından bu çocuklara hangi hak sağlanmıştır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:1),
                 Question(Question: "Bir rehabilitasyon merkezinde öğrencilere kötü davranışlarda bulunan bir kişiye devlet gerekli cezaları vererek kurumdaki öğrencileri koruma altına almıştır. Bu olaydaki örneğe göre devlet tarafından çocuklara sağlanan hak aşağıdakilerden hangisidir? ", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:2),
                 Question(Question: "Bir savaşta ailesiyle birlikte başka  bir yere göç etmek zorunda kalan 12 yaşındaki Melih ailesiyle birlikte barınacak yer bulmakta güçlük çekmektedir. Bu durumda Melih’ in hangi hakkı göz ardı edilmiştir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:0),
                 Question(Question: "13 yaşındaki Mert, her sabah babasıyla tarlaya çalışmaya gittiği için okula gidememektedir. Mert’in elinden hangi hakkı alınmıştır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:1),
                 Question(Question: "Boşanmış bir alenin tek çocuğu olan Funda 8 yaşındadır. Funda annesi ile birlikte yaşamaktadır. Funda’nın annesi Funda’ya fiziksel şiddet uygulamaktadır.  Funda yaşadığı şiddet olaylarından dolayı ailesinden alınarak devletin uygun gördüğü bir kuruma yerletirilmiştir. Funda bu olayda hangi haktan yararlanmıştır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:2),
                 Question(Question: "18 yaşın altındaki herkes çocuktur. Çocukların çalıştırılmaması gerektiği hangi çocuk hakkının içerisinde yer alır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:2),
                 Question(Question: "“Dinleri , dilleri vb. gibi şeylerden dolayı ayrım yapılamaz”  ifadesi hangi hakkı ifade etmektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:0),
                 Question(Question: "“Kendilerini ilgilendiren her konuda çocukların kararlara katılması gerekir.” İfadesinde hangi temel haktan bahsedilmektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "“Bir vatandaşlığa ve isime sahip olma hakkı her çocuğun hakkıdır” ifadesi hangi çocuk hakkını ifade etmektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:0)]
        
        QSet2 = [Question(Question: "9 yaşındaki Ecrin ailesiyle birlikte çocuk tiyatrosuna gitmek istemektedir. Ecrin’in ailesi bu isteğini yerine getirerek Ecrin’in hangi hakkını önemsemiş olur?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Kalıtım hakkı", "d) Korunma hakkı "], Answer:1),
                 Question(Question: "23 Nisan da okul müdürü koltuğuna oturan 9 yaşındaki Ahmet, okul içerisinde arkadaşlarıyla birlikte oynayacağı bir oyun parkı istemedektedir. Ahmet’in bu isteği hangi çocuk hakkına sahip olduğunu ifade eder?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:0),
                 Question(Question: "Tolga okul içerisinde çocuk haklarıyla ilgili topluluk kurmak istemektedir. Okul müdürü Tolga’nın bu topluluğu kurması için gerekli yardımları yapmaya hazırdır. Okul müdürü okuldaki öğrencilerin hangi hakkına saygı göstermektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "Şeyma düşüncelerini özgürce ifade eden ve haklarını bilen bir öğrencidir. Şeyma arkadaşlarıyla birlikte okulda bir tiyatro ekibi kurmak istediğini belirterek hangi çocuk hakkından faydalanmak istemektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:1),
                 Question(Question: "Ayça ailesiyle ilgili alınan kararlarda fikrini belirtmek istese de anne ve babası “Sen küçüksün anlamazsın” diyerek Ayça’ya söz hakkı vermezler. Ayça’nın hakkı elinden alınmıştır?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "12 yaşındaki Timur okul zamanında ailesi ile birlikte pamuk toplamak için tarlaya gitmektedir. Timur’un bu durumda hangi hakkı elinden alınmaktadır ?", Answers: ["a) Eğitim hakkı", "b) Yaşama hakkı", "c) Sevme sevilme hakkı", "d) Gelişim hakkı"], Answer:0),
                 Question(Question: "10 yaşındaki Ayşe ne zaman oyun oynamak için dışarıya çıkmak istese babası arkadaşlarıyla oyun oynamasına izin vermemektedir. Bu durumda Ayşe’nin elinden hangi hakkı alınmıştır?", Answers: ["a) Eğitim hakkı", "b) Yaşama hakkı", "c) Oyun hakkı", "d) Gelişim hakkı"], Answer:2),
                 Question(Question: "9 yaşındaki Melike’nin anne ve babası bulundukları coğrafyada çıkan iç savaş nedeniyle Melikeyi okuldan almak zorunda kalmış ve başka bir ülkeye göç etmek zorunda kalmıştır. Melike gittiği ülkede bir süre okula gidememiştir. Bu durumda Melike’nin elinden hangi hak alınmıştır?", Answers: ["a) Oyun hakkı", "b) Gelişim hakkı", "c)Koruma hakkı", "d)Eğitim Hakkı"], Answer:3),
                 Question(Question: "Muhammed 8 yaşındadır. Muhammed ailesiyle birlikte bulunduğu ülkedeki karışıklıktan dolayı Türkiye’ye göç etmiştir. Türkiye’de Muhammed gibi çocuklar için özel çalışmalar yürütülüp bu çocuklara yeni bir yaşam alanı verilmektedir. Bu durumda Muhammed’e devlet tarafından hangi hak verilmiştir?", Answers: ["a) Eğitim hakkı", "b) Gelişim hakkı", "c) Yaşama hakkı", "d) Oyun hakkı"], Answer:2),
                 Question(Question: "Yılmaz ailesinin en büyük çocuğu olan Murat 11 yaşındadır. Murat bir lokanta da yarı zamanlı çalışarak ailesine maddi yardımda bulunması için evde baskı görmektedir.. Murat iş yerinde çok çalıştığı için okuldaki derslerine çalışamadığı için başarısız bir öğrencidir.  Bu durumda Murat’ın elinden alınan hak hangisidir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:1),
                 Question(Question: "Büşra ilkokul 4.sınıfa gitmektedir. Büşra arkadaşları tarafından okul temsilcisi olarak seçilmiştir. Okul müdürü ise Büşra’ya özel bir oda vermiştir. Büşra bu odada arkadaşlarının okul ile ilgili istek ve beklentilerini dinleyip okul idaresiyle gerekli görüşmeleri yapıp çözüm üretmektedir. Büşra bu durumda hangi temel hakkını kullanmaktadır?", Answers: ["a) Katılım hakkı", "b) Yaşama hakkı", "c) Barınma hakkı", "d)Sevme ve sevilme hakkı"], Answer:0),
                 Question(Question: "Ali,  konuşkan, hakkını savunan, kendine güvenli ve duyarlı bir çocuktur. Ders esnasında öğretmen sınıfa, ‘’Engelli bireyler hakkında ne düşünüyorsunuz?’’ diye soru sorar. Ali söz hakkı alarak engelli bireyler hakkında düşüncelerini belirtmiş ve çözüm önerileri sunmuştur. Ali bu durumda hangi temel hakkını kullanmıştır?", Answers: ["a) Barınma hakkı", "b) Eğitim hakkı", "c) Dinlenme hakkı", "d) Katılım hakkı"], Answer:3),
                 Question(Question: "“Yaşanılır bir dünyada yaşamak her çocuğun hakkıdır.” sözü hangi çocuk hakkına girer?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:0),
                 Question(Question: "“Anne ve babalarının izni olmadan hiçbir çocuk başka bir ülkeye götürülemez. Çocukları bu şekilde başka yerlere götüren kişilere karşı mücadele edilmesi gerekir” ifadesinde hangi çocuk hakkından bahsedilmektedir?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:2),
                 Question(Question: "Sağlık hizmetlerinden yararlanmak ve sağlıklı bir yaşam sürmek hangi çocuk hakkına girer?", Answers: ["a) Yaşam hakkı", "b) Gelişim hakkı", "c) Korunma hakkı", "d) Katılım hakkı"], Answer:0)]
        
        select = Int(arc4random_uniform(2))
        //delete = QSet1.count
        designButtons()
        PickQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
        
        if select == 0 {
            
            QNumber = Int(arc4random_uniform(UInt32(QSet1.count)))
            QLabel.text = QSet1[QNumber].Question
            AnswerNumber = QSet1[QNumber].Answer
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(QSet1[QNumber].Answers[i], for: UIControlState.normal)
            }
            
            Answered += 1
            
            QSet1.remove(at: QNumber)
            
            //delete = delete-1
            
            if QSet1.count == 0{
                performSegue(withIdentifier: "go", sender: nil)
            }
        }
        
        if select == 1 {
            
            QNumber = Int(arc4random_uniform(UInt32(QSet2.count)))
            QLabel.text = QSet2[QNumber].Question
            AnswerNumber = QSet2[QNumber].Answer
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(QSet2[QNumber].Answers[i], for: UIControlState.normal)
            }
            
            Answered += 1
            
            QSet2.remove(at: QNumber)
            
            //delete = delete-1
            
            if QSet2.count == 0{
                performSegue(withIdentifier: "go", sender: nil)
            }
        }
    }
    
    @IBAction func Button(_ sender: Any) {
        
        if AnswerNumber == 0 {
            Buttons[0].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[0].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
        } else {
            Buttons[0].backgroundColor = UIColor.red
            Buttons[AnswerNumber].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[0].backgroundColor = UIColor.babyBlue
                self.Buttons[self.AnswerNumber].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
        }
    }
    
    @IBAction func Button1(_ sender: Any) {
        
        if AnswerNumber == 1 {
            Buttons[1].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[1].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
            
        } else {
            Buttons[1].backgroundColor = UIColor.red
            Buttons[AnswerNumber].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[1].backgroundColor = UIColor.babyBlue
                self.Buttons[self.AnswerNumber].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
        }
    }
    
    @IBAction func Button2(_ sender: Any) {
        
        if AnswerNumber == 2 {
            Buttons[2].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[2].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
            
        } else {
            Buttons[2].backgroundColor = UIColor.red
            Buttons[AnswerNumber].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[2].backgroundColor = UIColor.babyBlue
                self.Buttons[self.AnswerNumber].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
        }
    }
    
    @IBAction func Button3(_ sender: Any) {
        
        if AnswerNumber == 3 {
            Buttons[3].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[3].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
            
        } else {
            Buttons[3].backgroundColor = UIColor.red
            Buttons[AnswerNumber].backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.Buttons[3].backgroundColor = UIColor.babyBlue
                self.Buttons[self.AnswerNumber].backgroundColor = UIColor.babyBlue
                self.PickQuestion()
            }
        }
    }
    
    
    func designButtons(){
        
        for i in 0..<Buttons.count{
            Buttons[i].layer.cornerRadius = 6
        }
        
        //QView.layer.cornerRadius = 6
        //QView.layer.borderWidth = 1
        //QView.layer.borderColor = UIColor.lightGray.cgColor
        
        QLabel.layer.cornerRadius = 6
        QLabel.layer.borderWidth = 1
        QLabel.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
    
    

  
    
    
    
    
    
    
    
    
    
}







