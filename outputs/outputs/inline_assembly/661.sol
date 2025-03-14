pragma solidity ^0.8.0;
contract Mutator3 {
    constructor() public {}
    function testMethod(int[] memory v) public {
        v.push(0);
        v[0] = 0;
        v[1] = 1;
        v[2] = 2;
        v[3] = 3;
        v[4] = 4;
        v[5] = 5;
        v[6] = 6;
        v[7] = 7;
        v[8] = 8;
    }
}
