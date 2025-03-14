pragma solidity ^0.8.0;
contract Mutator2 {
    uint256[9] var v;
    constructor() public {
        v[10] = 99;
    }
    function testMethod(int[] memory v) public {
        v[2] = 1;
    }
}
