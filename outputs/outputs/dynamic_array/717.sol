pragma solidity ^0.8.0;
contract test276 {
    uint p = 1;
    uint  a = 0;
    uint b = 0;
    constructor() public {
        a = 1;
        b = 0;
    }
    function test(uint _b) public {
        if (b == _b) b = 1;
        else {
            a = 1;
            b = _b;
            p = 0;
        }
    }
}
