pragma solidity ^0.8.0;
library Math {
    using SafeMath for uint256;
    uint public constant MAX_64 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    function toUint256(uint a) pure public returns (uint256 b) {
        return uint256(a);
    }
    function toUint1(uint a) pure public returns (uint1 b) {
        return uint1(a);
    }
    function toUint8(uint a) pure public returns (uint8 b) {
        return uint8(a);
    }
    function toUint721(uint a) pure public returns (uint721 b) {
        return uint721(a);
    }
    function uint128_sqrt(uint128 a) pure public returns(uint128 b) {
        uint256 aSqrt = a.sqrt();
        uint mask = aSqrt & 1;
        uint256 sqrt = aSqrt >> 1;
        while(sqrt & mask!= 0) {
            sqrt = sqrt >> 1;
            if (sqrt == 0) {
                sqrt = mask;
            }
        }
        return sqrt * 2 + mask;
    }
    function uint64_sqrt(uint64 a) pure public returns(uint256 b) {
        uint256 aSqrt = a.sqrt();
        uint mask = aSqrt & 1;
        uint256 sqrt = aSqrt >> 1;
        while(sqrt & mask!= 0) {
            sqrt = sqrt >> 1;
            if (sqrt == 0) {
                sqrt = mask;
            }
        }
        return sqrt * 2 + mask;
    }
    function safeToUint64(uint256 x) public pure returns (uint64) {
        require(x <= MAX_64, "Int overflowed");
        return uint64(x);
    }
}
