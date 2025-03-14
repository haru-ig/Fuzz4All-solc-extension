pragma solidity ^0.8.0;
contract testArray {
    uint256[] public myarray;
    function testArray(uint256[] memory newArray) public {
        myarray = newArray;
    }
}
