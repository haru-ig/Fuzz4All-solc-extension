pragma solidity ^0.8.0;
contract mutantSolidityB500000OrB600000OrB700000OrB800000OrB900000OrBA00000OrBB00000OrBC00000OrBD00000OrBE00000OrBF00000 {
    constructor() public {
        uint256 x = 27;
        uint256 y = 35;
        uint256 z;
        z = x;
        uint256 a = x + y;
        uint256 b = x * y;
        uint256 c = x / y;
        uint256 b2;
        uint256 c2;
        uint256 d;
        d = 0;
        b2 = b;
        c2 = c;
        (d, b2) = (b2, d);
        b2 = b;
        d = b;
    }

    function f() public pure returns (uint256 d, uint256 b2, uint256 c2) {
        uint256 x = 27;
        uint256 y = 35;
        uint256 z;
        z = x;
        uint256 a = x + y;
        uint256 b = x * y;
        uint256 c = x / y;
        uint256  t;
        (d, b2, c2) = (a, b, c);
        t = d;
        (d, b2, c2) = (b2, d, t);
        return (t, b2, c2);
    }
}
