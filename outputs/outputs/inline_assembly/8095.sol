pragma solidity ^0.8.0;
contract NewMutated {
    Drink[] private drinks;
    uint256 private totalPrice;
    uint256 private numDRinks;
    function create() public {
        drinks.push(
            Drink(4, "Black Milk")
        );
        numDRinks = uint256(drinks.length);
    }
    function reducePrice() public {
        drinks[uint256(drinks.length)-1].price = 1 * 10 ** 18;
        numDRinks++;
    }
    function addDrink() public {
        drinks.push(
            Drink(4, "Black Milk Red Rising Jug")
        );
        totalPrice = totalPrice + drinks[uint256(drinks.length-1)].price;
        numDRinks += 3;
    }
    function finalize() public {
        drinks[uint256(drinks.length)-1].name = "Black Milk Red Rising Jug";
        numDRinks--;
    }
}
