pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 private _array = 0;
    function increaseArray(uint256 input) public {
        _array = _array + input;
    }
    function getArray() public view returns (uint256) {
        return _array + array;
    }
}
