pragma solidity ^0.8.0;
contract Mod_128 {
    uint80 result;
    function mod_128(uint80) public returns (uint80) {
        uint80 res = 0x800000000000000000000000000000;
        return res / 80000;
    }
}
