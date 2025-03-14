pragma solidity ^0.8.0;
contract Test47d {
    mapping (uint => uint256) public mynMap;
    constructor () public {
        mynMap[1] = 2;
    }
    function setTest2() public {
        mynMap[1] = 4;
    }
    function test() public {
        mynMap[1] = mynMap[1]+1;
    }
    function test2() public {
        mynMap[1] = mynMap[1]+2;
        mynMap[1] = mynMap[1]+3;
    }
}
