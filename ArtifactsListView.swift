import SwiftUI

struct ArtifactsListView: View {
    @ObservedObject var viewModel = ArtifactsViewModel()
    
    // Define two columns for the grid
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                // Use LazyVGrid to arrange items in a grid
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.artifacts) { artifact in
                        NavigationLink(destination: ArtifactDetailView(viewModel: viewModel, artifact: artifact)) {
                            ArtifactSummaryView(viewModel: viewModel, artifact: artifact)
                        }
                        .buttonStyle(PlainButtonStyle()) // To prevent the NavigationLink from affecting the button's style
                    }
                }
                .padding() // Add padding around the grid
            }
            .navigationBarTitle("Artifacts", displayMode: .inline)
        }
    }
}

// Preview provider
struct ArtifactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactsListView()
    }
}
