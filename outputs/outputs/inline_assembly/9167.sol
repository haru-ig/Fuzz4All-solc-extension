pragma solidity ^0.8.0;
contract A {
    uint constant public _uint32 = 16**60;
    function mutated(uint x) public pure returns (uint) {
        uint[50] storage a = new uint[](0x1);
        return _uint32 ** 60 * 2 ** 32/x;
    }
}
