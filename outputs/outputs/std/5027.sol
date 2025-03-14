pragma solidity ^0.8.0;
contract Original {
    uint256 public x;
    uint256 public y;
    uint8 public z;
    uint32 public w;

    function set() public {
        x = 10000;
        y = 3869489309;
        z = 16474525;
        w = 10000;
    }

    function check() public {
        if (x == 10000) {
            y = 746893901 / x;
            z = (x * x) + y * (x * x) + y;
            w = w + z;
        }
    }
}
