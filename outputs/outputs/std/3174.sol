pragma solidity ^0.8.0;

contract Array {
    uint[] array;


    function setArray(uint[5] memory _array) public {
        array = _array;
    }

    function getArray() public returns (uint[5]) {
        return array;
    }


    function setElement(uint _position, uint _value) public {

        if (_position == 0) {
            array[0] = _value;
        } else if (_position == 1) {
            array[1] = _value;
        }
    }

    function getElement(uint _position) public returns (uint) {

        if (_position == 0) {
            return array[0];
        } else if (_position == 1) {
            return array[1];
        }
    }

    function length() public returns (uint) {
        return array.length;
    }
}
