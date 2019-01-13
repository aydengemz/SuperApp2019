




import UIKit

class PeopleDataSource: NSObject, UITableViewDataSource {
    
    var peopleList: PeopleList? = nil
    
    func setPeopleList(newList: PeopleList) {
        if self.peopleList == nil {
            self.peopleList = newList
        }else{
            self.peopleList!.results.append(contentsOf: newList.results)
        }
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.peopleList?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PeopleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PeopleTableViewCell", for: indexPath) as! PeopleTableViewCell
        
        if let people = peopleList?.results[indexPath.row] {
            
            let url = URL(string: people.picture!.medium!)
            let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
            cell.avatar.image = UIImage(data: data!)
            cell.name.text = "\(people.name!.title) " + "\(people.name!.first) " + "\(people.name!.last)"
            
        }
        
        return cell
    }
    
}
