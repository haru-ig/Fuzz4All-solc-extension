pragma solidity ^0.8.0;
contract test273 {
    uint a;
    constructor() public {
        emit Test(a);
        a = 2;
    }
    event Test(uint a);
}
