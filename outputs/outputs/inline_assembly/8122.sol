pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    constructor(uint256 price) public {
        price = price;
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
