pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    uint stored;
    function callModifyTest() public {
        modifyTest();
        stored += 9;
    }
    function modifyTest() public {
        dynArr = new uint[](3);
        dynArr[0] += 3;
        dynArr[1] += 9;
        stored += 3 * 9;
    }
    function callInitTest() public {
        dynArr[2] = 6;
        dynArr[1] -= 9;
        dynArr[0] -= 6;
        dynArr = new uint[](1);
        dynArr[0] = 3;
    }
    function initTest() public {
        dynArr = new uint[](1);
        dynArr[0] = 3;
    }
}
