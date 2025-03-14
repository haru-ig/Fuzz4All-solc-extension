pragma solidity ^0.8.0;
contract C {
    uint s3[3];
    constructor() public {
        s3[0] = 1;
        s3[1] = 1;
    }
    function f(uint[] memory x) public {
        s3[0] = x.length;
        x[1] = 1;
    }
}
