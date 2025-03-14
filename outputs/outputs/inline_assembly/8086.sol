pragma solidity ^0.8.0;
contract EquivalentMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink[] private drinks;
    uint256 private totalPrice;
    uint256 private numDrinks;

    constructor() public {
        drinks.push(
            Drink(4, "Black Milk")
        );
        numDrinks = drinks.length;
    }

    function reducePrice() public {
        drinks[uint256(drinks.length-1)].price = 1 * 10 ** 18;
        numDrinks--;
    }
    function addDrink() public {
        drinks.push(
            Drink(4, "Black Milk Red Rising Jug")
        );
        totalPrice = totalPrice + drinks[uint256(drinks.length-1)].price;
        numDrinks += 2;
    }
    function finalize() public {
        drinks[uint256(drinks.length-1)].name = "Black Milk Red Rising Jug";
        numDrinks--;
    }

    function priceOf(uint8 index) public view returns (uint256) {
        return drinks[index].price;
    }
    function drinks() public view returns (Drink[]) {
        return drinks;
    }
    function drinkCount() public view returns (uint256) {
        return numDrinks;
    }

    function totalPriceOf() public view returns (uint256) {
        return totalPrice;
    }
}
contract Auction {
    struct Bid {
        uint256 price;
        uint256 bidder;
    }
    struct Winnings {
        uint256 totalWins;
        uint256 numB
