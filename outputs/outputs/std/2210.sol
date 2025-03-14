pragma solidity ^0.8.0;
contract NoMut {
    uint array_index;
    constructor() {
        a = 0;
    }
    function setArray(uint _index, uint _value) internal {
        array_index = _index;
        value = _value;
    }
    function getArray() public view returns (uint256) {
        return array_index;
    }
}
