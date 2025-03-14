pragma solidity ^0.8.0;



contract BaseMath {
    function sqrt(uint x) public pure returns (uint y) {
        require(x >= 2, "negative");
        uint x_copy = x;
        uint y_copy = 1;
        y = 1;
        while (x_copy > 2) {
            uint temp = y_copy;
            x_copy /= 2;
            y_copy = x_copy + y_copy > y_copy? x_copy : y_copy;
            y = temp;
        }
        return y_copy;
    }
    function pow(uint x, uint y) public pure returns (uint z) {
        if (x == 0) {
            return 1;
        }
        if (y == 0) {
            return 1;
        }
        if (y < 0) {
            return 1 / pow(x, -y);
        }
        z = 1;
        while (y > 0) {
            if (y & 1 == 1) {
                z = z * x;
            }
            x = x * x;
            y >>= 1;
        }
        return z;
    }
}
