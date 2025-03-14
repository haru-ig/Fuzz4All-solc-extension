pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 1;
    uint256 value2 = 2;
    uint[20] private memory array;
    function storeData(uint _index, uint256 _value) public {
        array[_index] = _value;
    }

    function storeArray() public {
        uint[] memory _array = new uint[](2);
        for (uint _index = 0; _index < _array.length; _index++) {
            array[_index] = 1 + _index;
        }
        uint _index1;
        for (uint _index = 0; _index < _array.length; _index++) {
            _index1 = array[_index];
            storeData(uint(uint8(_index)), 1 + _index);
        }
    }
}
