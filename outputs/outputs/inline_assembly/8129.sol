pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public constant totalPrice = 0 ether;
    uint256 public constant numDRinks = 1;
    constructor () public {
        numDRinks++;
        totalPrice += 10 ** 18;
        numDRinks += 0;
    }
    function addDrink() public {
        totalPrice += totalPrice;
        numDRinks++;
    }
    function finalize() public {
        if (block.timestamp % 2 == 0) {
            totalPrice += totalPrice;
        }
        numDRinks--;
    }
}
