import UIKit

class SourceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // ②テーブルに表示するデータの準備
    var CountryList = ["Home", "Visual sort", "Heap sort", "Quiz", "Search","Web","PDF","Introduction","Charenge"]
    var id = ["A", "B", "C", "D", "E","F","G","H","I"]
    var vcname = 0
    var result:Int?
    var received :Int?
    // 元からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ③テーブルの行数を指定するメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CountryList.count
    }
    
    // ④セルの中身を設定するメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        
        // セルに値を設定する
        cell.textLabel!.text = CountryList[indexPath.row]
        return cell
    }
    
    
    
    // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    // セルの選択を解除
    // tableView.deselectRow(at: indexPath, animated: true)
    
    // 別の画面に遷移
    
    // performSegue(withIdentifier: "toNext", sender: nil)
    
    
    //func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    //let nextVC:SecondViewController = SecondViewController()
    //self.presentViewController(nextVC, animated: true, completion: nil)
    //tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
    
    
    //private func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    //tableView.deselectRow(at: indexPath, animated: true)
    
    //let storyboard: UIStoryboard = self.storyboard!
    //  let nextView = storyboard.instantiateViewController(withIdentifier: "kk") as! quizViewController
    //   self.present(nextView, animated: true, completion: nil)
    // }
    //セルがタップされた時の処理
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        result = indexPath.row
        if indexPath.row == 0 {
            performSegue(withIdentifier: "k",sender: self)
        }else if indexPath.row == 1 {
            performSegue(withIdentifier: "one",sender: self)
        }else if indexPath.row == 2 {
            performSegue(withIdentifier: "three",sender: self)
        }
        else if indexPath.row == 3 {
            performSegue(withIdentifier: "four",sender: self)
        }
        else if indexPath.row == 4 {
            performSegue(withIdentifier: "five",sender: self)
        }
        else if indexPath.row == 5 {
            performSegue(withIdentifier: "six",sender: self)
        }
        else if indexPath.row == 6 {
            performSegue(withIdentifier: "seven",sender: self)
        }
        else if indexPath.row == 7 {
            performSegue(withIdentifier: "eight",sender: self)
        }
        else if indexPath.row == 8 {
            performSegue(withIdentifier: "nine",sender: self)
        }
    }
    
    //セグエで移動する前にデータを受け渡す
   
        
    
}
