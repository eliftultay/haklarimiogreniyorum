//
//  AgreementViewController.swift
//  haklarimiögreniyorum
//
//  Created by Elif Tultay on 9.04.2018.
//  Copyright © 2018 eliftultay. All rights reserved.
//

import UIKit

var rowNumber = Int()

class AgreementViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bm1: UILabel!
    @IBOutlet weak var bm2: UILabel!
    
    let list = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55]
//    let list2 = ["  ",
//                 "Çocuğun tanımı",
//                 "Ayrım gözetmeme ilkesi",
//                 "Çocuğun yüksek yararının gözetilmesi ilkesi",
//                 "Hakların uygulanmasında devletlerin yükümlülükleri",
//                 "Ana – babanın sorumluluklarına hak ve ödevlerine saygı",
//                 "Yaşam ve gelişme hakkı",
//                 "İsim ve vatandaşlık hakkı",
//                 "Kimliğin korunması hakkı",
//                 "Ana – baba ile yaşama hakkı",
//                 "Ailenin yeniden birleşmesi",
//                 "Yasa dışı yollarla ülke dışına çıkarma ve geri döndürmemeden korunma hakkı",
//                 "Çocuğun görüşünün alınması ilkesi",
//                 "İfade özgürlüğü",
//                 "Düşünce, vicdan ve din özgürlüğü",
//                 "Dernek kurma özgürlüğü",
//                 "Özel yaşantının korunması hakkı",
//                 "Gerekli bilgilere ulaşma hakkı",
//                 "Çocuğun yetiştirilmesinde ana – babanın ve devletin sorumlulukları",
//                 "Suistimal ve ihmalden korunma hakkı",
//                 "Aile ortamından yoksun çocuğun korunma hakkı",
//                 "Evlat edinmeye ilişkin",
//                 "Mülteci çocukların durumlarına özgü hakları",
//                 "Özürlü çocukların durumlarına özgü hakları",
//                 "Sağlık ve sağlık hizmetlerinden yararlanma hakkı",
//                 "Yerleştirme uygulamasını denetim hakkı",
//                 "Sosyal güvenlik hakkı",
//                 "Yeterli yaşam standardına ulaşma hakkı",
//                 "Eğitim hakkı",
//                 "Eğitimin hedeflerine ilişkin ilkeler",
//                 "Azınlıklara ve yerli halklara mensup çocukların hakları",
//                 "Dinlenme, boş zaman değerlendirme ve kültürel etkinliklere katılma hakkı",
//                 "Çocukların çalışmalarına yönelik ilkeler",
//                 "Uyuşturucu kullanımından korunma hakkı",
//                 "Cinsel sömürüden korunma hakkı",
//                 "Satılma, kaçırılma ve fuhuştan korunma hakkı",
//                 "Sömürünün diğer biçimlerinden korunma hakkı",
//                 "İşkence ve özgürlükten yoksun bırakmaya karşı korunma hakkı",
//                 "Silahlı çatışmadan korunma hakkı",
//                 "Yeniden sağlığa kavuşturucu bakımdan yararlanma hakkı",
//                 "Adil yargılanma hakkı ve çocuğa özgü adalet sisteminin ilkeleri",
//                 "Üstün standartlara uyma yükümlülüğü",
//                 "Sözleşmenin uygulanması ve tanıtılması",
//                 "Birleşmiş Milletler Çocuk Hakları Komitesi",
//                 "Taraf devletlerin rapor verme yükümlülükleri",
//                 "Uluslararası organların temsil edilme hakları",
//                 "Sözleşmenin tüm devletlere açık olması",
//                 "Sözleşmenin onaylanması",
//                 "Sözleşmeye katılım",
//                 "Sözleşmenin yürürlüğe giriş koşulları",
//                 "Taraf Devletlerin Sözleşmede değişiklik talep etme yetkisi",
//                 "Çekince beyan etme usulü",
//                 "Sözleşmenin fesih şartları",
//                 "Sözleşmenin tevdi makamı",
//                 "Sözleşmenin yayın dilleri",
//                 "  "]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "tableViewCell")
        if indexPath.row == 0 {
             cell.textLabel?.text = "Önsöz"
        } else if indexPath.row == 55 {
             cell.textLabel?.text = "İhtirazi Kayıt"
        } else {
             cell.textLabel?.text = "MADDE " + "\(list[indexPath.row])"
        }
       
        return (cell)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        rowNumber = indexPath.row
        performSegue(withIdentifier: "showDetail", sender: self)
        
    }

    func design(_ object:AnyObject){
        
        object.layer.cornerRadius = 6
        object.layer.masksToBounds = true
        object.layer.borderWidth = 1
        object.layer.borderColor = UIColor.cyan.cgColor
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.design(tableView)
        self.design(bm1)
        self.design(bm2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
