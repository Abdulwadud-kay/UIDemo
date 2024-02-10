



import SwiftUI


struct ArtifactSummaryView: View {
    @ObservedObject var viewModel: ArtifactsViewModel
    var artifact: ArtifactsData
    @State private var isNavigationActive = false
    
        var body: some View {
            VStack {
                Button(action: {
                    self.isNavigationActive = true
                }) {
                    Image(artifact.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 200)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 4, x: 0, y: 2)
                }
                
                NavigationLink(destination: ArtifactDetailView(viewModel: viewModel, artifact: artifact), isActive: $isNavigationActive)  {
                    EmptyView()
                }
                .hidden()

                Text(artifact.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top, 2)

                Text("Current Bid: $\(artifact.currentBid, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 2)

                HStack {
                    ForEach(0..<Int(artifact.rating.rounded()), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.all, 10)
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.width / 2 - 20)
            }
        }
    }




struct ArtifactSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ArtifactsViewModel()
        HStack {
            ArtifactSummaryView(viewModel: viewModel, artifact: viewModel.artifacts[0])
            ArtifactSummaryView(viewModel: viewModel, artifact: viewModel.artifacts[1])
        }
        .padding(.horizontal)
        .previewLayout(.sizeThatFits)
    }
}

// Ensure you have the sample artifacts available for the preview
//let sampleArtifact1 = ArtifactsView(
//    id: UUID(),
//    title: "Ancient Vase",
//    description: "A beautiful ancient vase with intricate patterns.",
//    startingPrice: 150.0,
//    currentBid: 200.0,
//    isSold: false,
//    likes: 100,
//    dislikes: 10,
//    currentBidder: "BidderName",
//    timeRemaining: 7200,
//    comments: 15,
//    imageName: "ArtifactImage",
//    rating: 4.5,
//    isBidded: false,
//    imageNames: ["ArtifactImage", "ArtifactImage2"],
//    videoNames: ["vid", "vid"]
//)
//
//let sampleArtifact2 = ArtifactsView(
//    id: UUID(),
//    title: "Ancient Pot",
//    description: "A beautiful ancient pot with cultural significance.",
//    startingPrice: 180.0,
//    currentBid: 250.0,
//    isSold: false,
//    likes: 80,
//    dislikes: 5,
//    currentBidder: "OtherBidder",
//    timeRemaining: 5600,
//    comments: 10,
//    imageName: "ArtifactImage",
//    rating: 4.0,
//    isBidded: true,
//    imageNames: ["ArtifactImage2", "ArtifactImage3"],
//    videoNames: ["vid", "vid"]
//)
