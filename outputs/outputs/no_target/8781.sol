pragma solidity ^0.8.0;
enum Suit { Spades, Heart, Diamonds, Clubs }
contract Poker {
    function valueInHand(Suit suit) public view returns (uint);
}
contract EquivalentABIsemanticallyDifferentInterface {
    Poker test;
    function mintA () public { test.valueInHand(Suit.Clubs); }
}
