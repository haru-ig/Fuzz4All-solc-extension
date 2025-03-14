pragma solidity ^0.8.0;
library L {
    uint256 d;
    uint256 e;
    uint256 a;
    function h() public {
        a = ~a^1;
        d = ~d^2;
        e = ~e^3;
    }
}
contract E3 {
    uint256 d;
    uint256 e;
    uint256 a;
    function h() public {
        a = L.a;
        d = L.d;
        e = L.e;
    }
}
