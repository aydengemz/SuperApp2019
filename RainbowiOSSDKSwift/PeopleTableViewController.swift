//
//  MovieListViewController.swift
//  MoviesApp
//
//  Created by Pedro Valentini on 25/08/18.
//  Copyright © 2018 Pedro Valentini. All rights reserved.
//

import UIKit

class PeopleViewController: UITableViewController {
    
   // var currentPage = 0
    //var isLoading = false
    var peopleDataSource = PeopleDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self.peopleDataSource
       
        //        self.tableView.register(UINib(nibName: "LoadingCell", bundle: nil), forCellReuseIdentifier: "LoadingCell")
    }
    /*
    func getPeople() -> PeopleList {
        if let data = try? Data(contentsOf: Bundle.main.url(forResource: "50RandomUsers", withExtension: "json")!) {
            print(data)
            let decoder = JSONDecoder()
            people = try! decoder.decode(PeopleList.self, from: data)
            
            
            saveToContactPlist(contacts: contacts)
        }
    }*/
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       
            if self.peopleDataSource.peopleList == nil {
                if let data = try? Data(contentsOf: Bundle.main.url(forResource: "50RandomUsers", withExtension: "json")!) {
                      print("@@@\(data)")
                self.peopleDataSource.peopleList = PeopleList.initWith(data: data)
                    print("@@@\(self.peopleDataSource.peopleList)")
                }
            }
        
        /*
         if self.navigationController == nil {
         print("failed")
         return
         }
         
         let navView = UIView()
         
         let label = UILabel()
         label.text = "Movies Currently Playing"
         label.sizeToFit()
         label.center = navView.center
         label.textAlignment = NSTextAlignment.center
         navView.addSubview(label)
         self.navigationItem.titleView = navView
         navView.sizeToFit()
         */
        // TODO: add loading view
        // TODO: error handler and alerts / retry
    }
    
   
    
    // MARK: - UITableViewDelegate Methods
    
    
    // MARK: - Navigation
    
        }

