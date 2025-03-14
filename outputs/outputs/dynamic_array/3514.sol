pragma solidity ^0.8.0;
contract C {
    uint256[51][62] a1;
    constructor() public {
        a1[0][10] = 3;
        a1[15][67] = 8;
    }
    function mul() public payable {}
}
