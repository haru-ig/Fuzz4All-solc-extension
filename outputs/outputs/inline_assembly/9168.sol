pragma solidity ^0.8.0;
contract A {
    uint8 constant public _uint8 = 16**60;
    function mutated(uint8 x) public pure returns (uint8) {
        return _uint8 ** 40 * 2 ** 32/x;
    }
}
