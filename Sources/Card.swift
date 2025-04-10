import Foundation

struct Card: Identifiable, Hashable {
    let id = UUID()
    let rank: Rank
    let suit: Suit

    var description: String {
        return "\(rank.rawValue) of \(suit.rawValue)"
    }

    enum Rank: String, CaseIterable {
        case three = "3", one = "1", two = "2", king = "K", queen = "Q", jack = "J", ten = "10"
        // Other ranks without numerical value can be added here
    }

    enum Suit: String, CaseIterable {
        case hearts = "Hearts", diamonds = "Diamonds", clubs = "Clubs", spades = "Spades"
    }

    static var allCards: [Card] {
        var cards = [Card]()
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                cards.append(Card(rank: rank, suit: suit))
            }
        }
        return cards
    }
}
