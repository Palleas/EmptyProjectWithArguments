//
//  ViewController.swift
//  EmptyProjectWithArguments
//
//  Created by Romain Pouclet on 2017-11-09.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var debug: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let arguments = ProcessInfo.processInfo.arguments.joined(separator: "\n\n")

        let envVars = ProcessInfo.processInfo.environment
            .map { "* \($0): \($1)" }
            .joined(separator: "\n\n")

        let content = """
This is content of the arguments:
\(arguments)

This is the environment variables:
\(envVars)
"""

        debug.text = content
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

