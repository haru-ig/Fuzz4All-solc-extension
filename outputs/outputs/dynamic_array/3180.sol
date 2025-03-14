pragma solidity ^0.8.0;
contract AssignmentModulation {
    uint x = 1;
    uint c = 1;
    uint b = 0;
    uint y = 1;
    uint d = 1;
    uint a = 1;
    function doWork() public {
        uint x2 = x + y;
        uint c1 = x + d;
        uint b2 = 1;
        while (b2 < 2) {
            b2 *= 10;
        }
        uint c = b2 * y;
        uint b = c - c1;
        uint a2 = 0;
        while (b2 == 2) {
            b = 2;
        }

        b = b ^ 1;
        y = (x2 ^ 1) + (d ^ 1);
        a = b;
        b = (x ^ 1) + (d ^ 1);
        d = a;
        x = c;

        if (b == 1) {
            y = 1;
            d = 2;
        }
    }
    function returnVar() view public returns (uint test) {
        returna.test = true;
        return d;
    }
}
