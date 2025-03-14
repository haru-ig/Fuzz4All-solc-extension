pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    modifier onlyInit
    {
        _;
        numDRinks++;
    }
    modifier onlyFinal
    {
        numDRinks += 1;
        _;
    }

    uint256 public totalPrice_original;
    uint256 public numDRinks_original;
    uint256 _gasPrice;

    constructor (uint256 _numDRinks, uint256 _gasPrice)
        public
        onlyInit
    {
        numDRinks = _numDRinks;
        totalPrice += 1000 * 10 ** uint256(8);
        numDRinks--;
        totalPrice -= 1 * 10 ** uint256(18);
        numDRinks -= 1;
        _gasPrice = _gasPrice;
    }
    function drain() public onlyFinal {
        totalPrice = totalPrice_original;
        numDRinks = numDRinks_original;
        totalPrice -= totalPrice_original;
        numDRinks = numDR
