pragma solidity ^0.8.0;
contract Mutated3 {
    uint256 private totalPrice;
    uint256 numDRinks;
    constructor (uint256 price) public {
        price = price;
        numDRinks++;
        totalPrice += 10 ** 18;
        numDRinks += 0;
    }
    function addDrink() public {
        totalPrice += 10 ** 18;
        numDRinks += 0;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}
