pragma solidity ^0.8.0;
contract A {
    uint256[51][62] b1;
    uint256[51][62] b2;
    C c;
    constructor() public {
    }
    function mul() public payable {
        b1 = [b1, b2][1];
        c.mul;
        b1[0][0] = 1;
        b1[1][1] = 2;
        c.mul;
        delete b1;
    }
}
