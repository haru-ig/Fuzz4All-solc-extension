pragma solidity ^0.8.0;
contract A {
    uint public _uint32;
    function _uint32_2_64(uint x) public pure returns (uint) {
        _uint32 = uint128(x) / 1;
        return _uint32 * 2 ** 32/x;
    }
}
