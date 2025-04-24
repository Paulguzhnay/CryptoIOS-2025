import SwiftUI
struct AssetDetailView: View{
    
    @State var viewModel: AssetDetailsViewModel
    
    var body: some View{
        VStack{
            Text(viewModel.asset.name)
            Button{
                viewModel.addToFavourites()
                
            }label:{
                Text("Add to favourites")
            }
        }
        .navigationTitle(viewModel.asset.name)
        .alert(
            viewModel.errorMessage ?? "",
            isPresented: $viewModel.showError){
                Button("OK"){
                    
                }
            }
    }
}

#Preview {
    NavigationStack{
        AssetDetailView(
            viewModel: .init(
                asset: .init(
                    id: "bitcoin",
                    name: "Bitcoin",
                    symbol: "VBTC",
                    priceUsd: "87400",
                    changePercent24Hr: "4.225"
                )
            )
        )

    }
}

