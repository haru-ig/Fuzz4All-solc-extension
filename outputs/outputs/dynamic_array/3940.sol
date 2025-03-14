pragma solidity ^0.8.0;
contract D {
    C c;
    function() external {
        c.x[0] = 2;
    }
    uint[2] d;
    function e() public {
        c.y[d[0]] += d[1];
    }
    function test_1() public {
        c.x.push(100);
        d.push(1);
        C(c).e();
    }
}
