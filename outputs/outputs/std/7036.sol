pragma solidity ^0.8.0;
contract XorAnd {
    function set(uint256 a) internal {
        a = 0x01;
    }
    function get() public view returns (uint256) {
        return a;
    }
    function call() public {
        a++;
        a *= 0x01;
        a *= 0x01;
        a /= 0x01;
        a ^= 0x01;
        a *= a + 1;
        a /= a + 1;
        a |= a + a;
        b += a ^ a + a + a + a - b - a + a - a - b - a - b + b;
    }
}
