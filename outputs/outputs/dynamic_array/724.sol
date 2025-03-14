pragma solidity ^0.8.0;
contract test276 {
    bytes32 a;
    uint b = 0;
    address c;
    constructor() public {
        c = address(this);
    }
    function test(uint _b) public {
        if (b == _b) b = 1;
        else {
            a = _b;
            b = _b;
            delete a;
        }
    }
}
