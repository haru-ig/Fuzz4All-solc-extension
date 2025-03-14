pragma solidity ^0.8.0;

contract ArrayMutator {



    function append(IArray _myArray, uint _value) public {
        _myArray.append(_value);
    }


    function getMaxValue(IArray memory _myArray) public view returns(uint256) {
        uint256 max = _myArray.length() > 0? _myArray.max() : 0;
        return max;
    }


    function getMinValue(IArray memory _myArray) public view returns(uint256) {
        uint256 min = _myArray.length() > 0? _myArray.min() : 0;
        return min;
    }


    function setValue(IArray memory _myArray, uint _index, uint _value) public {
        require( _index < _myArray.length());
        _myArray.set(_index, _value);
    }


    function getValue(IArray memory _myArray, uint _index) public view returns(uint256) {
        return _myArray.value(_index);
    }


    function indexOfValue(IArray memory _myArray, uint _value) public view returns(uint256) {
        return _myArray.indexOf(_value);
    }


    function length(IArray memory _myArray) public view returns(uint) {
        return _myArray.length();
    }


    function stringifyAll(IArray memory _myArray) public view returns(string memory) {
        return uintToString(_myArray);
    }
}
