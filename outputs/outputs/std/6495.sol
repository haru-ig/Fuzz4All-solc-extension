pragma solidity ^0.8.0;

contract Array {
    uint256[] public arr;

    function Array(uint256 _value) {
        arr.push(_value);
    }

    function setArr(uint256 _index, uint256 _value) public {
        require(_index < arr.length, "Index is Out Of Bounds");
        arr[_index] = _value;
    }
    function getArr(uint256 _index) public view returns (uint256) {
        require(_index < arr.length, "Index is Out Of Bounds");
        return arr[_index];
    }
    function arrLength() public pure returns (uint256) {
        return arr.length;
    }
}
