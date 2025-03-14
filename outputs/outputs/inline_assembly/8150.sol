pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 totalPrice_original;
    uint256 numDRinks_original;
    uint256 _gasPrice;
    map(uint256 => uint256) _prices;
    mapping(uint256 => bool) _opened;
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
        if (_opened[msg.sender * 10]) {
            addDrinkInternal(msg.sender);
