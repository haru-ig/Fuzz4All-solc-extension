pragma solidity ^0.8.0;
contract Test43{
    uint256 public myUint = 10;
    mapping (uint => uint256) public mynMap;
    constructor () public {
        mynMap[1] = 2;
    }
    function test() public {
        mynMap[1] = mynMap[2];
    }
    function test2() public {
        mynMap[1] = 2*mynMap[1];
    }
    function test3() public {
        mynMap[myUint] = 2;
    }
    function test4() public {
        for(uint i=0; i<5; i++){
            mynMap[257-i] = mynMap[1]+2;
        }
    }
}
