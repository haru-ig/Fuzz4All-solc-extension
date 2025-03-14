pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_11 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        tmp = new uint256[](3 + 1);
        tmp[tmp.length] = 1;
        size -= 2;
        size += 2;
        field = tmp;
    }
    function test1(bytes32 _data) public view {
        if(_data.length > 0) {
        }
        field = new uint256[](100 + 2);
        field[field.length - 1] = 0;
    }
    function test2(bytes32 _data) public view {
        if(_data.length > 0) {
        }
        field[field.length] = 0;
    }
}
