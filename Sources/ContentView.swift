import SwiftUI

struct ContentView: View {
    @StateObject private var game = CardGame()

    var body: some View {
        VStack {
            Text("Card Game")
                .font(.largeTitle)
                .padding()

            HStack {
                PlayerView(player: game.player1)
                PlayerView(player: game.player2)
            }

            HStack {
                ForEach(game.cardsOnTable, id: \.self) { card in
                    CardView(card: card)
                }
            }

            Button(action: {
                game.startGame()
            }) {
                Text("Start Game")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct PlayerView: View {
    var player: Player

    var body: some View {
        VStack {
            Text(player.name)
                .font(.title)
                .padding()

            ForEach(player.hand, id: \.self) { card in
                CardView(card: card)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

struct CardView: View {
    var card: Card

    var body: some View {
        Text(card.description)
            .font(.title)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
