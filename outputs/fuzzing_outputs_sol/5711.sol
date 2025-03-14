pragma solidity ^0.8.0;
contract SemanticallyEquivalent19
{
    bool private b;
    uint8 private c = 2;
    uint32 private d;
    modifier d_greater_than_0() {
        require(b && d >= 0,"Incorrect value");
        _;
    }
    constructor() public {
        b = true;
        b = false;
        b = true;
        d = 1;
        c++;
        d++;
        d--;
    }
}
