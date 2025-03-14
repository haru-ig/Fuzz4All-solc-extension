pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {
        dynArr[0] += 3;
        dynArr[1] += 9;
    }
    uint[] private dynArr;
}
