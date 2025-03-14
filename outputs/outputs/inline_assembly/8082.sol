pragma solidity ^0.8.0;
contract NewMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink[] private drinks;
    uint256 private totalPrice;
    uint256 private numDrinks;
    function create() public {
        drinks.push(
            Drink(4, "Black Milk")
        );
        numDrinks = uint256(drinks.length);
    }
    function reducePrice() public {
        drinks[uint256(drinks.length)-1].price = 1 * 10 ** 18;
        numDrinks++;
    }
    function addDrink() public {
        drinks.push(
            Drink(4, "Black Milk Red Rising Jug")
        );
        totalPrice = totalPrice + drinks[uint256(drinks.length-1)].price;
        numDrinks += 2;
    }
    function finalize() public {
        drinks[uint256(drinks.length)-1].name = "Black Milk Red Rising Jug";
        numDrinks--;
    }
}
