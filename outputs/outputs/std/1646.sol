pragma solidity ^0.8.0;
contract ArrayAccessApp2Old {
    function setElement(address[] memory _array, uint _index, bytes32 _value) internal {
        _array[_index] = _value;
    }
}
