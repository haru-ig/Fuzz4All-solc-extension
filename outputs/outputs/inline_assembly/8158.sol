pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 totalPrice;
    uint256 numDrinks;
    constructor () public {
        numDrinks = 100000;
    }
    function setPrice(uint _numDrinks) public {
        numDrinks = _numDrinks;
    }
    function finalize() public {
        totalPrice += (uint)((block.timestamp - 1508993450) * 40);
        number bogus = 1000000000000000000000000;
        totalPrice += bogus * (uint)((block.timestamp - 1508943003) * 40);
        numDrinks += 0;
    }
}
