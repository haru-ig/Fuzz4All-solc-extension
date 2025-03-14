pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 private _gasPrice;
    constructor (uint256 _numDRinks, uint256 _gasPrice)
    public {
        numDRinks = _numDRinks;
        _gasPrice = _gasPrice;
        setGASPrice();
    }
    function setGASPrice() public {
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        numDRinks = 8250;
        totalPrice = totalPrice_original;
    }
    function drain() public {
        totalPrice = totalPrice_original;
        numDRinks = numDRinks_original;
        totalPrice += totalPrice_original;
        numDRinks = numDRinks_original;
    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;
        numDRinks +=
