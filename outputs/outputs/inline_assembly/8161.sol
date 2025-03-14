pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 public gasPrice;
    uint256 numDRinks_original;
    uint256 totalPrice_original;
    uint256 _gasPrice;
    constructor (uint256 _numDRinks)
    public {
        numDRinks = _numDRinks;
        totalPrice += 1000 * 10 ** 8;
        totalPrice_original = totalPrice;
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks_original = numDRinks;
        gasPrice = gasPrice.add(10);

    }
    function addDrink() public {
        totalPrice += 1 * 10 ** 18;


        numDRinks += 0;
        _gasPrice += 10;


    }
    function initialize() public {
        totalPrice_original = totalPrice;
        numDRinks_original = numDRinks;
        totalPrice += 100
