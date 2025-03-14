pragma solidity ^0.8.0;
contract E2 {
    uint256 d;
    uint256 e;
    uint256 a;
    constructor() public {
        a = ~a^1;
        d = ~d^2;
        e = ~e^3;
    }
    function h() public {
        d = ~d^2;
        e = ~e^3;
    }
    function i() public {
        d = ~d^2;
        e = ~e^3;
    }
}
