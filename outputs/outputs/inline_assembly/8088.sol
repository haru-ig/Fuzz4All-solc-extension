pragma solidity ^0.8.0;
contract NewSemiMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink[] public drinks;
    function create() public {
        drinks.push(
            Drink(10, "Black Milk")
        );
        numDrinks = uint256(drinks.length);
    }
    function reducePrice() public {
        drinks[uint256(drinks.length)-1].price = 1 * 10 ** 18;
        numDrinks++;
    }
    function addDrink() public {
        drinks.push(
            Drink(30, "Black Milk Red Rising Jug")
        );
        totalPrice = totalPrice + drinks[uint256(drinks.length-1)].price;
        numDrinks += 2;
    }
    function finalize() public {
        drinks[uint256(drinks.length)-1].name = "Black Milk Red Rising Jug";
        numDrinks--;
    }
}
