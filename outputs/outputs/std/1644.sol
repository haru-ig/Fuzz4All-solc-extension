pragma solidity ^0.8.0;
contract ArrayAccessApp2New {
    function setElement(address[] memory _array, uint _index, address _value) internal {
        _array[_index] = _value;
    }
}
