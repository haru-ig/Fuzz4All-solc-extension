pragma solidity ^0.8.0;
contract MutatedTestArray {
    uint256[] public array;
    function testArray(uint256 _x) external{
        array.push(_x);
    }
    function modify() public{
        array[0] = 1;
    }
}
