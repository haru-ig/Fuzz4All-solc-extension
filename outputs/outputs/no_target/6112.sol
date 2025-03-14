pragma solidity ^0.8.0;
contract Mod_123 {
    uint result;
    constructor(uint) public {
        result = 6;
    }
    function mod_123(uint) public returns (uint) {
        uint res = 6;
        res = mod_123(res, 32);
        res = mod_123(res);
        return div_123(res);
    }
    function mod_123(uint, uint) public returns(uint) {
        return 4;
    }
    function div_123(uint) public returns (uint) {
        return 4;
    }
}
