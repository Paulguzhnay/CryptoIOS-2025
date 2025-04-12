import SwiftUI
struct AssetDetailView: View{
    
    let asset: Asset
    
    var body: some View{
        Text(asset.name)
            .navigationTitle(asset.name)
    }
}

#Preview {
    NavigationStack{
        AssetDetailView(
            asset: .init(
                id: "bitcoin",
                name: "Bitcoin",
                symbol: "VBTC",
                priceUsd: "87400",
                changePercent24Hr: "4.225"
            )
        )

    }
}

