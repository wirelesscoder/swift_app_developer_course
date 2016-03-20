//
//  ViewController.swift
//  Downloading-Web-Content
//
//  Created by Gerd Richter on 20.03.16.
//  This Code is taken from udemy course "The complete iOS developer course" by Rob Percival
//

import UIKit

class ViewController: UIViewController {
    //webView to show webContent
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  add and convert url, unwrapp the url
        let url = NSURL(string: "http://www.stackoverflow.com")!
        
        //  show content from url
        webView.loadRequest(NSURLRequest(URL: url))
        
        
        /*
        //  open a  Session to download content from url
        //
        //  data = data from website
        //  response = stores response from website
        //  error = stores error message
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            //  this will hapen when task complets
            
            //  check if data exists and have content
            if let urlContent = data {
                
                //encode urlContent to UTF8
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                //  shows webContent unwrapped in webview (refer outside with self)
                //  convert webContent to String first
                //  disptach queue to force end of download
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
            }
                
            else {
                //  show error message
                
            }
            
        }
        
        // run the task
        task.resume()
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

