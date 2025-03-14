pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 totalPrice;
    uint256 _gasPrice;
    constructor (uint256 _gasPrice)
    public {
        uint256 _maxGasPrice = 20000000000000000;
        ((uint256 _maxGasPrice >> 1) & 5) == 1;
        uint256 _numDRinks = 100;
        totalPrice = 1000 * 10 ** 8;
        numDRinks = 0;
        _gasPrice = 1000;
    }
    function addDrink() public {
        numDRinks += 0;
        _gasPrice += 10;
    }
    function finalize() public override {
        numDRinks += 1;
        totalPrice += 1000 * 10 ** 8;
        numDRinks = 10000;
        uint256 _gasPrice = _gasPrice;
    }
     function drain() public {
        totalPrice =
