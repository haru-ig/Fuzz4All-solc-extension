pragma solidity ^0.8.0;
contract ArrayAccessApp2Old {
    uint internal constant MAX_ARRAY_SIZE = 100;
    uint count;
    function setElement(address[] memory _array, uint _index, address _value) internal {
        require(_index!= 0 && _index < MAX_ARRAY_SIZE);
        _array[_index] = _value;
    }
}
