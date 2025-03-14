pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;
    uint256 numDRinks_original;
    constructor (uint256 _numDRinks)
        public
    {
        numDRinks = _numDRinks;
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function finalize() public returns (uint256 _value) {
        totalPrice_original = totalPrice;
        numDRinks_original = numDRinks;
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        numDRinks += 0;
        return totalPrice_original;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 1
