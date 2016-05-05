//
//  ViewController.swift
//  20131105818jfqq
//
//  Created by dou on 16/5/5.
//  Copyright © 2016年 stonepeak. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
    var dateVar:Array<AnyObject>=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        let context=(UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let row:AnyObject=NSEntityDescription.insertNewObjectForEntityForName("Entity",inManagedObjectContext: context)
        row.setValue("zhangsan", forKey: "a")
        do{
            try
                context.save();
            print("保存成功");
        }
        catch
        {
            fatalError("不能保存！")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

