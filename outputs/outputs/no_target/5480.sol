pragma solidity ^0.8.0;
contract C {
    uint public x;
    uint public y;
    uint public z;
    uint public z2;
    function f() external {
        C c;
        O o;
        x = 1;
        c.x = 2;
        o.x = 3;
        x = c.x - 1;
        x = c.x * 2;
        x = c.x + 2;
        x = c.x / 2;
        x = c.x % 2;
        x = c.x &= 0xFFFFFFFFFFFFFFFF;
        x = c.x >> 1;
        x = (~c.x) >> 1;
        x = c.x << 1;
        x = ((uint256(10)/10) + 1) % 10;
        x = uint256(1) << 4;
        x = uint256(-1);
    }
}
