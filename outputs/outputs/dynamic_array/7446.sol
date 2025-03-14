pragma solidity ^0.8.0;
contract Test48d {
    mapping (uint => uint256) public mynMap;
    constructor () public {
        mynMap[1] = 2;
    }

    uint public test = 0;
    function test2(uint test2) public {
        mynMap[1] = mynMap[1]+1+test2;
        mynMap[1] = mynMap[1]+test2+1;
    }
}
