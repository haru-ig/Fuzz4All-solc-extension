pragma solidity ^0.8.0;
contract Mutated1 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    constructor () public {
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}
