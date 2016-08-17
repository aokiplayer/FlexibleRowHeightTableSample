import UIKit

typealias Product = (name: String, description: String)

class ProductsViewController: UITableViewController {
    
    let products: [Product] = [
        ("MacBook Pro", "Proとあるけど、大体の人はこれを使えばいいような気がする。新しいMacBookだと、USB端子とかなくて困るよね。あと、やっぱりMagSafe 2は大事。"),
        ("MacBook Air", "Retinaじゃないです。それ以外の面では、むしろ新しいMacBookよりもいいような気がするんだけど。やっぱり13インチは最低必要だなって思った。"),
        ("新しいMacBook", "新しいiPadを思い出して悲しくなった。"),
        ("新しい新しいMacBook", "このモデルにはRose Goldもあるよ。"),
        ("Mac Pro", "ゴミ箱。それ以外の表現方法がないです。それに、実物を使ってる人が身近にいないから実感が湧かない。つまり、見た目だけの印象で判断することになる。すなわち、ゴミ箱。"),
        ("Mac mini", "ディスプレイは別売りだよ。これも、今後どうなるのかしら。小さくて可愛いから好きなんだけど。"),
        ("iMac", "会社に欲しい。"),
        ("iPad", "大きいiPhoneって言われてたけど、ちゃんと地位を築けた。そういう意味では、やっぱり上手いなって思わざるを得ない。結局、Androidタブレットはイマイチだしね。"),
        ("新しいiPad", "ケンちゃんラーメン新発売。"),
        ("iPad Air 2", "薄くて羨ましいやつ。でも同サイズのiPad Proと競合。今後はなくなっていくのだろうか。バリエーションを増やしたから、iPadに限らずApple製品の今後が心配だったりする。"),
        ("iPad mini", "ちょうどいい。サイズ的にも重さ的にも。でもiPhoneが大きくなってきたから用済みか。"),
        ("iPad Pro", "大きい。これ以上大きいのは多分iMatとかiFloorとか、もしかしたらiWallとかあるかもね。ないだろうけど。"),
        ("iPhone 3GS", "最初に買ったモデル。そういえば、この頃はエッジが丸かった。ということは、一周して戻ってきたのかな。でもエッジは角ばってる方が安定感があって嬉しいんだけど。"),
        ("iPhone 4S", "Steve Jobsが亡くなった直後に発売されたモデル。個人的にはデザイン的に一番好き。"),
        ("iPhone 6s", "バランスとしては一番いい気がする。ただし、エッジが丸いのでよく落ちる。"),
        ("iPhone 6s Plus", "大きいです。とにかく大きいです。片手での操作は、結構難しい。"),
        ("iPhone SE", "帰ってきた4インチiPhone。"),
        ("iPod touch", "電話機能の必要ない人は、これが一番いいかもしれないです。なぜならば、とにかく軽い。それに尽きる。ただし、GPSがなかったりするので注意。"),
        ("Apple TV", "これがあれば、わざわざVGAとかHDMIケーブルを伸ばさなくて良くなるんだけど。欲しい。")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューにカスタムセルを登録
        tableView.registerNib(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "productCell")
    }
    
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productCell", forIndexPath: indexPath) as! ProductCell
        
        cell.nameLabel.text = products[indexPath.row].name
        cell.descriptionTextView.text = products[indexPath.row].description

        return cell
    }
}
