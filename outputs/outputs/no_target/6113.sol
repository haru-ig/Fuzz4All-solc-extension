pragma solidity ^0.8.0;
contract Mod_121 {
    uint result;
    constructor(uint) public {
        result = 6;
    }
    function mod_121(uint) public returns (uint) {
        uint res = 6;
        res = mod_121(res);
        res = mod_123(res);
        return res;
    }
    function div_121(uint) public returns (uint) {
        return result;
    }
}
