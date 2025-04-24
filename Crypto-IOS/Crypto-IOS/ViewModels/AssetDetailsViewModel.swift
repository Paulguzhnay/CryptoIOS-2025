import Foundation
import FirebaseAuth
import Firebase

@Observable
final class AssetDetailsViewModel{
    
    let asset: Asset
    var errorMessage: String?
    var showError = false
    init(asset: Asset){
        self.asset = asset
    }
    func addToFavourites(){
        
        //1. check user
        guard let user = Auth.auth().currentUser else{
            errorMessage = "User not authenticated"
            showError = true
            return
        }
        
        let userId = user.uid
        
        //2
        let db = Firestore.firestore()
        
        db.collection("favourites")
            .document(userId)
            .setData(
                ["favourites": FieldValue.arrayUnion(["solana"])],
                merge: true)
        
    }
}
