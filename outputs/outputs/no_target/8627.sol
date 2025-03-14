pragma solidity ^0.8.0;
contract OverloadedAndMutated {
    function mul(uint x_, uint y_) public view returns (uint256) {

        if (y == 0) return 0;
        uint z = x_;
        for (; --y >= 0;) z = z * x_ * 10 ** y % 10 ** (x_ - 1);
        return z;
    }
    function mul(uint x_, uint y_) public pure returns (uint256) {

        if (y == 0) return 0;
        uint z = x_;
        for (; --y >= 0;) z = z * x_ * 10 ** y % 10 ** (x_ - 1);
        return z;
    }
}
contract OverloadedAndMutatedAndOverwritten {
    function mul(uint x_, uint y_) public view returns (uint256) {

        if (y == 0) return 0;
        uint z = x_;
        for (; --y >= 0;) {
            uint a = (x_ / (10 ** (y + 1) % 10 ** y % 10));
            z = z * x_ * 10 ** y % 10 ** (x_ - a);
        }
        return z;
    }
    function mul(uint x_, uint y_) public pure returns (uint256) {

        if (y == 0) return 0;
        uint z = x_;
        for (; --y >= 0;) {
            uint a = (x_ / (10 ** (y + 1) % 10 ** y % 10));
            z = z * x_ * 10 ** y % 10 ** (x_ - a);
        }
        return z;
    }
}
