pragma solidity ^0.8.0;
contract Mutated8 {
    function add(uint x) public pure returns (uint) {
        return add_uint160(x);
    }

    function add_uint160(uint x) pure internal returns (uint) {
        uint a = x;
        while (true) {
            a = x;
            if (a < 0 || uint(a) < x) {
                return add_overflow(a, x);
            }
            if (x == a) {
                return add_underflow(a, x);
            }
        }
    }
}
