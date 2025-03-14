pragma solidity ^0.8.0;
contract Mutated1 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;
    uint256 numDRinks_original;
    uint256 gas_price;
    constructor(uint256 _numDRinks, uint256 _gasPrice) public {
        gas_price = _gasPrice;
        numDRinks = _numDRinks;
        uint256 amount = 1000 * 10 ** 8;
        totalPrice += amount / 10;
        numDRinks++;
        amount += 1000 * 10 ** 18;
        totalPrice += amount / 10;
        numDRinks += 0;
    }

    function increasePrice() public {
        gas_price *= 2;
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice +=
