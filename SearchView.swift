//
//  SearchView.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/10/24.
//

import SwiftUI
import Firebase
// api key:
// 3b07cf22cf5b523f615f186bb75ae62b

struct nba: Hashable, Codable {
   // let id: String
    let sport_title: String
  //let commence_time: String
    let home_team: String
    let away_team: String
}
class ViewModel: ObservableObject {
    @Published var NBAgames: [nba] = []
    func fetch() {
        guard let url = URL(string: "https://api.the-odds-api.com/v4/sports/basketball_nba/odds?regions=us&oddsFormat=american&apiKey=3b07cf22cf5b523f615f186bb75ae62b") else {
            return
        }
        print(1)
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,
            error in
            guard let data = data, error == nil else {
                print("no data found")
               // print(error?.localizedDescription)
                return
            }
            print(data)
            do {
                let NBAgames = try JSONDecoder().decode([nba].self, from: data
                   )
                DispatchQueue.main.async {
                    self?.NBAgames = NBAgames
                }
                print(NBAgames)
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
struct SearchView: View
{
    @StateObject var viewModel = ViewModel()
    @State private var searchTerm = ""
//    var filteredGames: [nba] {
//        return NBAgames.filter { $0.home_team.localizedCaseInsensitiveContains(searchTerm) }
//    }
    var body: some View
    {
        NavigationStack {
            VStack {
                Spacer().frame(height: 30)
                Button("Fetch Data") {
                    print("test")
                    viewModel.fetch()
                }
                
                Text("Popular Picks")
                    .fontWeight(.bold)
                    .font(.system(size:30))
//                List {
//                    ForEach(filteredGames, id: \.self) { nba in
//                        HStack {
//                            Text(nba.home_team)
//                            Text(nba.away_team)
//                        }
//                    }
//                }
            }
            .toolbar {
                
            }
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            Image(systemName: "line.3.horizontal").font(.system(size: 30))
        }
        .searchable(text: $searchTerm, prompt: "Search Accounts, Teams, or Players")
        .onAppear {
//            viewModel.fetch()
        }
    }
}
#Preview {
    SearchView()
}
