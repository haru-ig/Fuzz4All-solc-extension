pragma solidity ^0.8.0;
contract NoMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    uint256 private totalPrice;
    uint256 private numDRinks;
    function create() public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function reducePrice() public {
        totalPrice += 2 * 10 ** 18;
        numDRinks++;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks += 3;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}
