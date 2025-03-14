pragma solidity ^0.8.0;
contract ArrayAccessApp2Mutated {
    function setElement(uint[] memory _array, uint _index, uint256 _value) internal {
        _array[_index] = _value;
    }
}
