pragma solidity ^0.8.0;



contract Array {
    uint[] storage _data;
    uint _length;

    function _updateLength() internal;
    modifier _arrayLengthValid() {
        if (_length > 0) {
            _;
        }
    }



    function getArrayAtIndex(uint index) public view returns (uint) {


        uint offset;
        assembly {
            offset := add(32, mul(index, 0x04))
        }

        return _data[offset];
    }


    function getIndexOfArray(uint[] memory array, uint index) public view returns (uint) {


        uint offset;
        assembly {
            offset := add(32, mul(index, 0x04))
        }

        return array[offset];
    }

    function _insert(uint index, uint value) internal {
        _data.length++;
        _data.push(value);
        _updateLength();
        emit _insert(index, value);
    }


    function setArrayAtIndex(uint index, uint value) public view returns(uint) {


        uint offset;
        assembly {
            offset := add(32, mul(index,
