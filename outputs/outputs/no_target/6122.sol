pragma solidity ^0.8.0;
contract Mod_125 {
    uint result;
    function mod_125(uint) public returns (uint) {
        uint res = 118422;
        res = mod_123(res);
        return res / 3748;
    }
    function mod_123(uint) public returns (uint) {
        uint res = 6;
        return res / 129898;
    }
}
