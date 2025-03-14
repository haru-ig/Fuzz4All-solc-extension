pragma solidity ^0.8.0;
contract SomeContract {
    uint256 private constant SIZE = 3;
    uint256[SIZE] array;
    uint256 test;
    bool[SIZE] arrayBool;
    constructor() {
        for (uint256 i = 0; i < SIZE; ++i) {
            array[i] = array[i] + 10;
            arrayBool[i] = true;
        }
    }
}

pragma solidity ^0.8.0;
import "./SomeContract.sol";


contract SomeContract {

    uint256 private constant SIZE = 3;


    uint256[SIZE] array;


    uint256 public first;

    uint256 public last;

    bool canBeAltered;


    constructor() public {
        first = 10;
        last = 100;
        canBeAltered = true;
        array = [first, 23.14 as uint256, 1300 as uint256];

    }


    function at(uint256 idx) public view returns (uint256) {
        return array[idx];
    }


    function atUint8(uint8 idx) public view returns(uint256) {
        return array[idx];
    }


    function setAt(uint256 idx, uint256 n) public {
        array[idx] = n;
    }


    function length() public view returns (uint256) {
        return array.length;
    }


    function compare(uint256 n, uint256 n_2) public pure returns(bool) {
        return n == n_2;
    }


    function max() public view returns (uint256) {
        return array.length > 0? array[0] : first;
    }

    /** @dev The value of the smallest element
