pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    struct Point {
        uint x;
        uint y;
    }
    uint256[] public array;
    function setArray(uint256[] memory _array) public {
        array = _array;
    }
    function testMe(uint256[] memory _array) public returns(uint256) {
        for (uint i = 0; i < _array.length; i++) {
            array[i] += 10;
        }
        return array[array.length - 1];
    }
}
