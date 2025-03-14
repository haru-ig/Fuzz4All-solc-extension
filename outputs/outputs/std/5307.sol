pragma solidity ^0.8.0;
contract Array {
    mapping (address => uint256) public myArray;
    uint8 private _length;
    constructor(uint8 _length) {
        _length = _length;
    }
    function length() public view returns (uint8) {
        return _length;
    }
    function set(uint8 _index, uint256 _value) public {
        myArray[_index] = _value;
    }
    function get(uint8 _index) public view returns (uint256) {
        return myArray[_index];
    }
    function sort() public {
        for (uint8 i = 1; i < _length; i++) {
            if (myArray[i - 1] >= myArray[i]) {
                uint256 temp = myArray[i - 1];
                myArray[i - 1] = myArray[i];
                myArray[i] = temp;
            }
        }
        for (uint8 i = 0; i < _length; i++) {
            myArray[i + 1] = get(i);
        }
    }
    function showMaxElem() public view returns (uint256) {
        return myArray[0];
    }
}
