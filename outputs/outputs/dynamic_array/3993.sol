pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    uint[] public s3;
    constructor() public {
        s1.push(1);
        s2.push(2);
    }
    function f(uint[] memory x, uint[] memory y, uint[] memory z) public {
        s1.push(1);
        s2.push(2);
        s3.push(3);
    }
}
