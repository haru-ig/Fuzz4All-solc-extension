pragma solidity ^0.8.0;
contract Mutated {
    uint256 private _price;
    uint256 private _drinks;
    uint256 private _price_original;
    uint256 private _drinks_original;
    constructor() public {
        _drinks++;
        _price += 1 * 10 ** 18;
    }
    function drink() public {
        _drinks += 1;
        _price += 1 * 10 ** 18;
        _drinks++;
    }
    function finalize() public {
        _price_original = _price;
        _drinks_original = _drinks;
        _drinks += _drinks_original;
        _price = _price_original;
        _drinks = _drinks_original;
    }
}
