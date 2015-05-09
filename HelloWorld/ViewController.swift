//
//  ViewController.swift
//  HelloWorld
//
//  Created by kensuke tanaka on 5/8/15.
//  Copyright (c) 2015 kensuke tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        // println("Hello, world!!")
        
        // 変数・定数
        var variable : Int = 1
        let constant : String = "hoge"
        variable = 3
        variable = 2
        
        // 配列・ディクショナリ
        var array : [Int] = [1,2,3,4,5]
        var dict : [String:String] = ["apple": "りんご", "orange": "みかん"]
        var emptyArray : [Int] = []
        var emptyDict : [String:Int] = [:]
        
        // タプル
        var taple : (String, Int, String)
        taple = ("hoge", 1, "fuga")
        
        // タプル(名前付き)
        var tapleWithName : (subject:String, cnt:Int, body:String)
        tapleWithName = ("こんにちは", 10, "私がMichealです")

        // 制御構文(if)
        let CNT_MIN = 10
        let CNT_MAX = 30
        if count(tapleWithName.body) < CNT_MIN {
            println("tapleWithName.bodyは\(CNT_MIN)文字より短い")
        } else if count(tapleWithName.body) < CNT_MAX {
            println("tapleWithName.bodyは\(CNT_MIN)文字より長く、\(CNT_MAX)より短い！！")
        } else {
            println("tapleWithName.bodyは\(CNT_MAX)文字より長い！！")
        }
        
        // 制御構文(while)
        var n = 10
        while n > 0 {
//            println(n)
            n--
        }
        
        // 制御構文(for)
        // 通常のfor文
        //for var i=0; i<10; i++ {
        //    println("for i:\(i)")
        //}
        
        // for .. in も使える
        //for i in 0...9 {
        //    println("for in i:\(i)")
        //}
        
        // 配列でfor .. in
        let fruits = ["りんご", "みかん", "ぶどう", "なし", "もも"]
        //for fruit in fruits {
        //    println("くだもの: \(fruit)")
        //}
        
        // 配列にインデックス
        //for (index, fruit) in enumerate(fruits) {
        //    println("くだもの \(index): \(fruit)")
        //}
        
        // Optional
        var opt : Int?
        var no_opt : Int
        opt = 1
        no_opt = 2
        println("no_opt(変更前): \(no_opt)")
        //no_opt = nil  Optionalじゃない変数にnilを代入するとコンパイルエラー
        //no_opt += opt Optionalな変数はIntとして使えず、やはりコンパイルエラー
        //no_opt += opt!  // Optionalな変数をIntとして使いたい場合は "!" で元の型に戻す
        //println("no_opt(変更後): \(no_opt)")
        opt = nil
        //no_opt += opt!  // "!" は対象がnilの場合にコンパイルは通るが、errorとなってしまう
        if let tmp_opt = opt {
            // その場合はif文を使って別変数に置き換えれば処理されない
            no_opt += tmp_opt
        }
        println("no_opt(変更後): \(no_opt)")
        
        // indexOf
        if let index = find(fruits, "メロン") {
            println("indexOf メロンは \(index) 番目です")
        } else {
            println("indexOf メロンは fruits にはありません")
        }
        
        // 関数
        var dbl : Int = doubleValue(2)
        println("double result1: \(dbl)")
        dbl = doubleValue(dbl)
        println("double result2: \(dbl)")
        
        noRetFunc(5)
       
        let (age, name) = profileInfo()
        println("age: \(age) ::: name: \(name)")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doubleValue(x: Int) -> Int {
        return 2 * x
    }

    func noRetFunc(y: Int) {  // 戻り値がない場合はVoidの記述は省略できる
        println("y : \(y)")
    }
    
    func profileInfo() -> (Int, String) {
        return (20, "Mutta")
    }
}
