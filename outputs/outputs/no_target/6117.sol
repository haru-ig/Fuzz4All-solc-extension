pragma solidity ^0.8.0;
contract Mod_80 {
    uint result;
    constructor(uint) public {
        result = 16;
    }
    function mod_80(uint) public returns (uint) {
        uint res;
        uint max = 8;
        uint i;
        for (i = 5; i >= 0; i--) {
            res = 32;
            res = res * i;
            res = res + res + res / max;
            if (res == 40 / i) {
                return i;
            }
        }
        return 0;
    }
}
