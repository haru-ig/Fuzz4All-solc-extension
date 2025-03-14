pragma solidity ^0.8.0;
contract Array {
    uint[] private _value;
    function value() public view returns (uint[]) {
        return _value;
    }

    function value_modify(uint x, int y) public view returns (uint[]) {
        uint[] storage array = _value;
        array[y] = x;
        return array;
    }

    function value_set(uint[] memory array, uint i) public view returns (uint[]) {
        uint[] storage array2 = _value;
        uint j = i;
        for (uint k = array.length; k <= j; k++) {
            array[k] = array[k - 1];
        }
        array[i] = 3;
        return array;
    }
}
