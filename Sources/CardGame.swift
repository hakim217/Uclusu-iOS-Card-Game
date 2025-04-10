import Foundation

class CardGame: ObservableObject {
    @Published var player1: Player
    @Published var player2: Player
    @Published var cardsOnTable: [Card]

    private var deck: [Card]

    init() {
        player1 = Player(name: "Player 1")
        player2 = Player(name: "Player 2")
        cardsOnTable = []
        deck = Card.allCards.shuffled()
    }

    func startGame() {
        deck = Card.allCards.shuffled()
        player1.hand = Array(deck.prefix(6))
        player2.hand = Array(deck.dropFirst(6).prefix(6))
        cardsOnTable = []
    }

    // Implement game logic such as drawing cards, playing cards, and bidding here
}
