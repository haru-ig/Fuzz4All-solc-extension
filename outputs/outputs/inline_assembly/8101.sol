pragma solidity ^0.8.0;
contract NoMutated {
    struct Drink {
        uint256 price;
        string name;
    }
    uint256 totalPrice;
    uint256 numDRinks;
    constructor() {
        totalPrice = 0;
        numDRinks = 0;
    }
    function create() public {
        totalPrice = 0;
        numDRinks = 0;
    }
    function reducePrice() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks += 1;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks += 1;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}
