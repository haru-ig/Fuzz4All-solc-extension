pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {
        dynArr[0] += 3;
        dynArr[1] += 9;
    }
    mapping (uint => uint[]) private dynArr;
}
contract A {
    function test() public {
        dynArr = [ [ 4, 5] ];
    }
    uint[1][2] private dynArr;
}
