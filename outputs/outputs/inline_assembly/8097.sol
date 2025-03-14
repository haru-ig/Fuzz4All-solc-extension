pragma solidity ^0.8.0;
contract NewMutated2 {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink drinks[10];
    uint256 numDRinks;
    function addDrink() public {
        drinks[uint256(numDRinks)].name = "Black Milk";
        drinks[uint256(numDRinks)].price = 4000;
        numDRinks++;
    }
    function finalize() public {
        for(uint256 i = 0;i<uint(numDRinks);i++) {
            totalPrice = totalPrice + drinks[uint256(i)].price;
        }
    }
}
contract AnotherMutated2 {
    struct Drink {
        uint256 price;
        string name;
    }
    Drink[] private drinks;
    uint256 private totalPrice;
    uint256 private numDRinks;
    function create() public {
        drinks.push(
            Drink(1, "Cheerleech")
        );
        numDRinks = uint256(drinks.length);
    }
    function reducePrice() public {
        uint256 lastIndex = drinks.length - 1;
        drinks[lastIndex].price = 1 * 10 ** 18;
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
        uint256 lastIndex = drinks.length-1;
        drinks[lastIndex].name
