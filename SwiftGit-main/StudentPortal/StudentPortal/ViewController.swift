//
//  ViewController.swift
//  StudentPortal
//
//  Created by IACD-026 on 2022/07/09.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var postsTable: UITableView!
    
    @IBOutlet weak var studentLogoUIImageView: UIImageView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var enterStudentNumberTextField: UITextField!
    
    @IBOutlet weak var enterPasswordTextField: UITextField!
    
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    
    //for posts table (start)
    //struct and array to add data
    struct Posts {
        let summary: String
        let date: String
    }
    
  
    let postData: [Posts] = [
        Posts(summary: "Lorem ipsum dolor sit amet. Non dolore fuglat aut dolorum molestiate possimus? pogf merre is nfor yud own nemo. Et laboriosam inventors sit velit rerum ab debitsi nostrum et quas error.", date: "13 June 2022"),
        Posts(summary: "Lorem ipsum dolor sit amet. Non dolore fuglat aut dolorum molestiate possimus? pogf merre is nfor yud own nemo. Et laboriosam inventors sit velit rerum ab debitsi nostrum et quas error.", date: "14 June 2022"),
        Posts(summary: "Lorem ipsum dolor sit amet. Non dolore fuglat aut dolorum molestiate possimus? pogf merre is nfor yud own nemo. Et laboriosam inventors sit velit rerum ab debitsi nostrum et quas error.", date: "8 June 2022"),
        Posts(summary: "Lorem ipsum dolor sit amet. Non dolore fuglat aut dolorum molestiate possimus? pogf merre is nfor yud own nemo. Et laboriosam inventors sit velit rerum ab debitsi nostrum et quas error.", date: "1 June 2022"),
        Posts(summary: "Lorem ipsum dolor sit amet. Non dolore fuglat aut dolorum molestiate possimus? pogf merre is nfor yud own nemo. Et laboriosam inventors sit velit rerum ab debitsi nostrum et quas error.", date: "30 May 2022"),
        Posts(summary: "Lorem ipsum dolor sit amet. Non dolore fuglat aut dolorum molestiate possimus? pogf merre is nfor yud own nemo. Et laboriosam inventors sit velit rerum ab debitsi nostrum et quas error.", date: "27 May 2022")
    ]
    //for posts table (end)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        enterStudentNumberTextField.delegate = self
        enterPasswordTextField.delegate = self
        //for posts table
        postsTable.dataSource = self
        postsTable.delegate = self
    }
    
    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        self.enterStudentNumberTextField.resignFirstResponder()
        self.enterPasswordTextField.resignFirstResponder()
        return true
    
    }
    
    //for posts table (start)
    //so table view knows how many rows there are
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let posts = postData[indexPath.row]
        let cell = postsTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PostsTableViewCell
        cell.summaryLabel.text = posts.summary
        cell.dateLabel.text = posts.date
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    //for posts table (end)
    
    @IBAction func SubmitButton(_ sender: Any) {
       
    }
    
}

