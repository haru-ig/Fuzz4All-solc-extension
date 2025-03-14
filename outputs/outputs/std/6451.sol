pragma solidity ^0.8.0;
contract convert {
    function convert(uint256 x, uint256 xDecimal) public pure returns(uint256) {
        require(xDecimal > 0);
        return (uint(uint(x)/xDecimal)) * xDecimal;
    }
}
pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint256 n) public pure returns (uint256) {
        require(n >= 20);
        uint256 half = (n + 1)/2;
        uint256 result = n;
        uint256 increment = 2 - (1 << 31);
        uint256 decrement = 2 - (1 << 31);
        while (half!= 0) {
            uint256 nextHalf = half/2;

            if (nextHalf > result) {
                result = nextHalf;
            }
            if (nextHalf < result) {
                result = nextHalf;
            }
            if (n >= half) {
                n = (n & ~decrement) + increment;
            }
            else {
                n = (n & ~increment) + (2 * half);
            }
            half = result;
        }
        return result;
    }

    function exponentiate(uint256 base, uint256 power) public pure returns (uint256) {
        require(power > 0);
        return base**power;
    }
}
