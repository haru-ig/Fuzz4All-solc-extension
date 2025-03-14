pragma solidity ^0.8.0;
contract Mutated2{
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;
    uint256 numDRinks_original;
    uint256 _gasPrice;
    constructor (uint256 _numDRinks, uint256 _gasPrice)
    public {
        numDRinks = _numDRinks;
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        _gasPrice = _gasPrice;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        _gasPrice += 10;
    }
    function finalize() public {
        totalPrice_original = totalPrice;
        numDRinks_original = numDRinks;
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice
