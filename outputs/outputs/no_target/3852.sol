pragma solidity ^0.8.0;
contract S5 {
    uint private a;
    uint256 private b;
    constructor() public {
        a = a + 1;
        b = a + 3*a + a*(a + 3);
    }
    function change(uint256 value) public {
        uint256 z = a + value;
        z += a;
        b += b[5];
        b *= 4;
        b[5] += 1;
        a = a + a;
    }
    function notEnoughChange(uint256 value) public {
        uint256 b2 = b + value;
        b = b2 + b2 + b2;
        b *= value;
        b += 2;
        b += a;
        a = a + a;
    }
}
