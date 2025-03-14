pragma solidity ^0.8.0;
contract E3 {
    uint256 d;
    uint256 d2;
    uint256 a;
    constructor() public {
        d2 = a = ~a ^ 2;
        d = d ^ d;
    }
    function h() public {
        d = d ^ d;
        d2 = a ^ a;
    }
    function i() public {
        d2 = a ^ a;
        a = a ^ a;
    }
}
