pragma solidity ^0.8.0;
contract Random {
    uint8 constant N = uint8(99);
    uint256 value;
    constructor(uint256 a) {
        value = a;
    }
    function get() public pure returns (uint256) {
        return value;
    }
    function increment() public {
        value = uint256(value + randomN(uint256(uint256.maxUint - 1) - uint256(1)));
    }
    function randomN(uint256 x) internal pure returns (uint256) {
        uint256 n = 128;
        while (n--) {
            uint256 next;
            uint256 y = N*randomN(n);
            (uint256, uint256) = (y, x - (x % y));
            if (uint256(x) > y) {
                x = next;
            }
        }
        return x;
    }
}
