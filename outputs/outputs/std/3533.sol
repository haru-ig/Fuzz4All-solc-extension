pragma solidity ^0.8.0;
contract Incrementor {
    uint internal constant _incrementValue = 1;
    Incrementor internal _incrementor;
    uint private _mappingOfNumbers;

    constructor () {
        _incrementor = new Incrementor();
    }

    function increment(uint256 value) public {
        _mappingOfNumbers += value;
        _incrementor.increment(_incrementValue);
    }

    function getNumber() public view returns (uint) {
        return(_mappingOfNumbers);
    }
}
