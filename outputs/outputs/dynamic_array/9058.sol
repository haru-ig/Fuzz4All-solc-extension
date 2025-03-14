pragma solidity ^0.8.0;

contract DynamicalySizedIntArrayStorage is IDynamicalySizedArrayAddress {

    uint [] array;

    function storeWithSize(bytes[][] memory _data) external payable {
        array = new uint[](_data.length);
        uint k, j;
        for (uint i = 0; i < _data.length; i++) {

            j = i*2;
            array[j] = _data[i].length;
        }
        return;
    }

    function returnArray() public view returns (uint[]) {
        return array;
    }

    function size() public view returns (uint) {
        return array.length;
    }
}
