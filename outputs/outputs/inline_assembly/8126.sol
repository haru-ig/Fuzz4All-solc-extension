pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    address[5] private contractArray;
    constructor () public {
        contractArray.push(this);
        contractArray.push(address(this));
        contractArray.push(this);
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
