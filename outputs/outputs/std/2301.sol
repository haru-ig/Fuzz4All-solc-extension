pragma solidity ^0.8.0;
 library Math {

    function sqrt(uint256 x) internal pure returns (uint256 y) {
        require(x > 0, "Math: sqrt(0)");
        uint256 x2 = x;
        y = 1;
        uint256 x4 = x2 * x2;
        while (x4 >= x2) {
        y = y + 1;
        x2 = x2 / 2;
        x4 = x2 * x2;
        }
    }


    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b!= 0, "Math: modulo by zero");
        return a % b;
    }


    function abs(int256 x) internal pure returns (uint256 y) {
        if (x >= 0) {
        y = x;
        } else {
        y = x * -1;
        }
    }


    function sign(int256 x) internal pure returns (int256 sign) {
        if (x == 0) {
        return 0;
        } else if (x > 0) {
        sign = 1;
        } else {
        sign = -1;
        }
    }
}
