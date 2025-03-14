pragma solidity ^0.8.0;
contract Fallback {
    uint256 a;
    uint256 b;
    constructor(uint256 a_, uint256 b_) {
        a = a_;
        b = b_;
    }
    function validSubtract(uint256 x) public pure returns (uint256) {
        uint256 y = x + 1;
        switch (y) {
            case 1: {
                return x + 1;
            }
            default: {
                return x;
            }
        }
    }
    function validDivide(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 z = x - y + 1;
        switch (z) {
            case 0: {
                return 1;
            }
            default: {
                return z;
            }
        }
    }
    function invalidAdd(uint256 x) public pure returns (uint256) {
        if (x >= 0) {
            uint256 y = x + 1;
            switch (y) {
                case 1: {
                    return x + 1;
                }
                default: {
                    return invalidAdd(x);
                }
            }
        } else {
            return x + 1;
        }
    }
    function invalidDivide(uint256 x, uint256 y) public pure returns (uint256) {
        if (y >= 0) {
            uint256 z = x - y + 1;
            switch (z) {
                case 0: {
                    return 1;
                }
                default: {
                    return invalidAdd(x);
                }
            }
        } else {
            return x + 1;
        }
    }
    function invalidMult(uint256 x, uint y) public pure returns (uint256) {
        return x + y + 1;
    }
}
