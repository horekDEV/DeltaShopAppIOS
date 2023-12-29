import UIKit

class ViewController: UIViewController {
    let bgAlerts: UIColor = UIColor(red: 80/255, green: 64/255, blue: 153/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func helpBtn(_ sender: UIButton) {
        let actionsButton = UIAlertAction(title: "Закрыть", style: .cancel)
        
        let messageAttributed = NSAttributedString(string: "наша почта: deltanitroworking@gmail.ru \n наш дискорд сервер: ЖМИ НА КУПИТЬ", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        let alert = UIAlertController(title: " ", message: " ", preferredStyle: .alert)
        alert.setValue(messageAttributed, forKey: "attributedMessage")
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = bgAlerts
        alert.view.tintColor = UIColor.white
        alert.addAction(actionsButton)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buyBtn(_ sender: UIButton) {
        let title = "Лицензионное соглашение при покупке товаров в DeltaShop \n"
        let rules = "1. Покупая и активируя Nitro в Discord, вы соглашаетесь с условиями данного лицензионного соглашения. \n 2. Владение аккаунтом Nitro предоставляется лично вам и не может быть передано или продано третьим лицам. \n 3. Discord оставляет за собой право изменять стоимость и содержание Nitro без предварительного уведомления. \n 4. Вы несете полную ответственность за любое использование аккаунта Nitro, включая обязательство соблюдения условий Discord Community Guidelines. \n 5. Discord оставляет за собой право отключения или ограничения аккаунта Nitro при нарушении условий использования или обнаружении подозрительной активности. \n 6. DeltaShop не несет ответственности за любые убытки, возникшие в результате использования аккаунта Nitro или его компонентов. \n 7. DeltaShop оставляет за собой право расторгнуть данное лицензионное соглашение и отключить аккаунт Nitro в случае нарушения политики использования или любых других правил Discord. \n 8. Все претензии, связанные с аккаунтом Nitro, должны быть направлены в службу поддержки DeltaShop в соответствии с их правилами и процедурами. \n \n Пожалуйста, обратите внимание, что это простое лицензионное соглашение и его содержание может различаться в зависимости от правил и условий, установленных Discord на момент покупки Nitro."
        
        let acceptAction = UIAlertAction(title: "Принимаю", style: .default, handler: { (action) in
            if let url = URL(string: "https://t.me/deltashoptg") {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
        })
        
        let titleAttributed = NSAttributedString(string: title, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let messageAttributed = NSAttributedString(string: rules, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        let alert = UIAlertController(title: " ", message: " ", preferredStyle: .alert)
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = bgAlerts
        alert.view.tintColor = UIColor.white
        alert.addAction(acceptAction)
        alert.setValue(titleAttributed, forKey: "attributedTitle")
        alert.setValue(messageAttributed, forKey: "attributedMessage")

        
        self.present(alert, animated: true)
    }
}
