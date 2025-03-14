pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 private totalPrice_original;
    uint256 private numDRinks_original;
    uint256 _gasPrice;
    address payable user;
    constructor (uint256 _numDRinks, uint256 _gasPrice)
    public
    {
        numDRinks = _numDRinks;
        totalPrice += 1000 * 10 ** 8;
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
        _gasPrice = _gasPrice;
        user = msg.sender;
    }

    function getPrice() public
    {

    }
    function getPriceBeforeDrain() public pure
    {

    }
    function drain() public
    {
        totalPrice = totalPrice_original;
        numDRinks = numDRinks_original;
        totalPrice += totalPrice_original - totalPrice_original;
        numDRinks = numDRinks_original;
