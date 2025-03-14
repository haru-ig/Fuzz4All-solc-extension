pragma solidity ^0.8.0;
contract A {
    uint constant public _uint32 = 16**60;
    function _uint32_2_64(uint x) public pure returns (uint) {
        return _uint32 * 2 ** 32/x;
    }
}
