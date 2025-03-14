pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;

    uint256 totalPrice_original;

    uint256 _gasPrice;
    constructor (uint256 _numDRinks, uint256 _gasPrice) public {
        totalPrice = 1000 * 10 ** 8;
        numDRinks = _numDRinks;
        _gasPrice = _gasPrice;

    }
    function addDrink() public {
        totalPrice += 1000 * 10 ** 8;
        numDRinks += 0;
        _gasPrice += 10;
    }
    function finalize() public {
        totalPrice_original = totalPrice;

        totalPrice += 1000 * 10 ** 8;
        numDRinks+= 0;
        _gasPrice = _gasPrice;
    }
