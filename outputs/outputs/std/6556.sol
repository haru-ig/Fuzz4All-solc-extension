pragma solidity ^0.8.0;
contract Mutate6 {
    uint32 x;
}

contract Mutate {
    function mutate1(uint32 x) public pure returns (uint32) {
        if (x!= 0 || x > 20)
            x = x + 1;
        else
            x = 20;
        return x;
    }

    function mutate2(uint32 x) public pure returns (uint32) {
        uint32 y = 4 * x / 7;
        if (y!= x / 7)
            x = y;
        else
            x = x * 2;
        return x;
    }

    function mutate3(uint32 x, uint256 y) public pure returns (uint32) {
        uint32 x_ = x + y * 9 / 7;
        if (x!= x_ || x > 20) {
            x = x_ + 1;
        } else {
            x = 20;
        }
        return x;
    }

    function mutate4(
        uint32 x,
        uint256 y,
        uint256 z,
        uint256 t,
    ) public pure returns (uint32) {
        uint32 x_ = x + y * 11 / 7 + z * 13 / 7 + t * 17 / 7;
        if (x!= x_ || x > 20) {
            x = x_ + 1;
        } else {
            x = 20;
        }
        return x;
    }

    function mutate5() public returns (uint32) {
        uint32 x0 = 2 * 2 * 2 * 2 * 2 * 2 * 2;
        uint32 x1 = 6 * 6 * 6 * 6 * 6 * 6 * 6;
        uint32 x2 =
            x0 * 9 / 7 + x1 * 9 / 7 + 2 * 80 / 7 + 34 * 5 / 7;
        uint32 x3 = 3 * 2 * 19 / 7 + 8 * 59 / 7 + 23 * 3 / 7 + 68 * 3 / 7;
        uint32 x4 = 2 * 73 / 7 + 51 * 63 / 7 + 44 * 19 / 7 + 98 * 41 / 7;
        uint32 x5 = 3 * 40 / 7 + 68 * 79 / 7 + 125 * 9 / 7 + 36 * 15 / 7;
        uint32 x = x2 + x5 + x3 + x4 + x5 + x4 * 4 / 7;
        return x;
    }

    function mutate6() public returns (uint32) {
        Mutate5 storage x = Mutate5(x);
        uint32 x_;
        if (x!= uint32(0)) {
            x_ =
