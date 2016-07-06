import UIKit

let token = "xxxxxxxxxxxxxxxxxxxxxxxxxx"

var urlComponents = NSURLComponents(string: "https://api.annict.com/v1/me/works")!
urlComponents.queryItems = [
    NSURLQueryItem(name: "access_token", value: token),
    NSURLQueryItem(name: "filter_status", value: "watching"),
    NSURLQueryItem(name: "fields", value: "id,title,official_site_url")
]
let config = NSURLSessionConfiguration.defaultSessionConfiguration()
let session = NSURLSession(configuration: config)
var req = NSMutableURLRequest(URL: urlComponents.URL!)

req.HTTPMethod = "GET"
let jsonData: NSData = NSData(contentsOfURL: urlComponents.URL!)!
var json = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .MutableContainers) as! NSDictionary
let arr = json["works"]! as! NSArray

for val in arr {
    print(val["title"])
}

