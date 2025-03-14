pragma solidity ^0.8.0;
contract MutatedDynamicArrays20 {
    uint256 constant maxElements = 16;
    uint256[] public elementsInitial;
    function add(uint256 _value) public {
        if (_value > maxElements - 1) {
            elementsInitial = new uint256[](_value + 1);
        } else {
            elementsInitial = new uint256[](maxElements + 1);
        }
        elementsInitial[maxElements] = _value;
    }
}
