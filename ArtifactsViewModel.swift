



import Foundation
import Combine

class ArtifactsViewModel: ObservableObject {
    // Published properties that the SwiftUI views can observe
    @Published var artifacts: [ArtifactsData] = []
    @Published var selectedArtifact: ArtifactsData?
    @Published var isLoading: Bool = false

    // Function to fetch artifacts data from the backend
    func fetchArtifacts() {
        isLoading = false
        // Implement the logic to fetch data from your backend
        // Update 'artifacts' with the fetched data
        // You might use URLSession, Firebase, or any other networking library
    }

    // Functions to handle likes, dislikes, and rating updates
    func updateLikes(for artifactID: UUID) {
        // Implement logic to update likes in the backend
    }

    func updateDislikes(for artifactID: UUID) {
        // Implement logic to update dislikes in the backend
    }

    func calculateRating(for artifact: ArtifactsData) -> Double {
        // Implement your rating logic based on the current bid
        return 0
    }
    init() {
        // Initialize with sample data for previews or testing
        self.artifacts = [
            ArtifactsData(
                id: UUID(),
                title: "Ancient Vase",
                description: "A beautiful ancient vase with intricate patterns.",
                startingPrice: 150.0,
                currentBid: 200.0,
                isSold: false,
                likes: 100,
                dislikes: 10,
                currentBidder: "BidderName",
                timeRemaining: 7200,
                comments: 15,
                imageName: "ArtifactImage",
                rating: 4.5,
                isBidded: false,
                imageNames: ["ArtifactImage", "ArtifactImage2"],
                videoNames: ["vid", "vid"]
            ),
            ArtifactsData(
                id: UUID(),
                title: "Ancient Pot",
                description: "A beautiful ancient pot with cultural significance.",
                startingPrice: 180.0,
                currentBid: 250.0,
                isSold: false,
                likes: 80,
                dislikes: 5,
                currentBidder: "OtherBidder",
                timeRemaining: 5600,
                comments: 10,
                imageName: "ArtifactImage",
                rating: 4.0,
                isBidded: true,
                imageNames: ["ArtifactImage", "ArtifactImage"],
                videoNames: ["vid", "vid"]
            )
        ]
    }
}
    

// Preview provider with initialized viewModel containing artifacts
