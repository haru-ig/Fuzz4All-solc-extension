pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private originalPrice;
    uint numDRinks;
    uint256 totalPrice;
    uint256 numDRinks_original;
    uint256 gasPrice = 10;
    constructor(uint256 _numDRinks) public {
        numDRinks = _numDRinks;
        originalPrice = 1000 * 10 ** 8;
        numDRinks++;
    }
    function addDrink() public {
        numDRinks++;
        originalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function finalize() public {
        numDRinks_original = numDRinks;
        numDRinks += 1;
        originalPrice += 1000 * 10 ** 8;
        numDRinks++;
        originalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function drain() public {
        totalPrice = originalPrice + numDRinks * _finalFee(gasPrice);
        numDR
