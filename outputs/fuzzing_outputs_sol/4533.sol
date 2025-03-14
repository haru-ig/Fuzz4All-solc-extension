pragma solidity ^0.8.0;
contract SemanticsDifferent {
    uint256 public number;

    function f() public pure {
        number = 6;
    }

    function change() public pure {
        number *= 2;
        number = 4;
        number /= 1 + 2;
        number += 2;
        number >>= 5;
        number <<= 40;
        number = (number << 32) >> 32;
        number |= 100;

        number = number + 100;
    }
}
