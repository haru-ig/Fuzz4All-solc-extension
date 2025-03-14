pragma solidity ^0.8.0;
library lib {
    uint256 constant c = 0x02;

    function f() public pure {
        uint256 constant d = 0x02;

        uint256 constant e = 1000;
        uint256 x = 0;
        if (x == e) {
            x = 0x02;
            x &= d;
            d += (uint256(-1));
        }
        uint256 y = c;
        y &= d;
        return e;
    }

    function f_overflow() public pure {
        uint256 constant d = -676489770;

        uint256 x = 10000000000000;

        uint256 y = c & c;
        if (y!= d) {
            uint256 z = uint256(uint8(y) & uint8(d));

            uint256 w = (uint256(uint8(y) | uint8(d)) + (uint256(-1))) & uint256(d);
            y = uint8(z);
            y = uint256(uint8(y) | w);
        }
        uint256 z = c + c;
        uint256 w = 10 * uint256(z);

        w = uint256(uint8(y) | uint8(d));
        y = uint8(w);
        w = (10 + w) - w;
        uint256 v = w - 10 * uint256(z) + uint256(100) / 100;
        assert(y > v);
        assert(y < 100 * uint256(z));

        uint256 z = ~v;
    }
}
