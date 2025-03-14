pragma solidity ^0.8.0;
contract Mod_124 {
    uint result2;
    constructor(uint) public {
        result2 = 6;
    }
    function mod_124(uint) public returns (uint) {
        uint res;
        res = 6;
        result2 = res;
        res = div_124(res);
        return res;
    }
    function div_124(uint) internal returns (uint) {
        return 4;
    }
}
