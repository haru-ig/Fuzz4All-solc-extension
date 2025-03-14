pragma solidity ^0.8.0;
contract test276 {
    uint a = 0;
    uint b = 0;
    address c;
    constructor() public {
        c = address(this);
    }
    function test(uint _b) public {
        if (a == 1 && b == _b) b = 1;
        else {
            a = 1;
            b = _b;
        }
    }
}
