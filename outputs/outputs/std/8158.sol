pragma solidity ^0.8.0;
contract Math {
    function plusOne(uint256 x) public pure returns (uint256) {
        return x + 1;
    }
    function plus(uint256 a, uint256 b) public pure returns (uint256 c) {
        c = a + b;
        return c;
    }
    function minus(uint a, uint b) public pure returns(uint256 c) {
        c = a - b;
        return c;
    }
    function times(uint a, uint b) public pure returns (uint256 c) {
        c = a * b;
        return c;
    }
    function division(uint a, uint b) public pure returns (uint256 c) {
        (c, ) = div(a, b);
        return c;
    }
    function div(uint a, uint b) pure returns (uint256, uint256) {
        require(b > 0, "cannot divide by 0");

        uint256 quotient = a / b;
        uint256 remainder = a % b;




        require(remainder == 0, "cannot divide by non-integer number");

        return (quotient, remainder);
    }

    function modulo(uint256 a, uint256 b) public pure returns (uint256) {
        return a % b;
    }
    function sqrt(uint x) public pure returns (uint256) {
        uint256 y = x;

        uint256 xSquared = x * x;
        while ((xSquared & 1) == 1) {
            y = (y + x / y) / 2;
            xSquared = xSquared / 2;
        }

        return y;
    }
}
