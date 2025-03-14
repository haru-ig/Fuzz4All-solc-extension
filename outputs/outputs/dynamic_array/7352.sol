pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {
        dynArr[0] += 3;
        dynArr[1] += 9;
    }
    bool[] public dynArr;
}
contract A {
    function test() public {
        dynArr = [false, true];
        bool _returnedValue = dynArr[0] && dynArr[2];
    }
    bool[] public dynArr;
    function modifiedTest() public {
        dynArr[0]++;
        dynArr[2]--;
    }
}
