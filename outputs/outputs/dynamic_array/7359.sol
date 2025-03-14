pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr = new uint[](3);
        dynArr[0] += 3;
        dynArr[1] += 9;
    }
}
