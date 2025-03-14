pragma solidity ^0.8.0;
contract Mod_1_bug {
    uint result;
    function mod_1(uint a) public returns (uint) {
        uint res = a;
        res = a / 1;
        if (a == 0) return a;
        else {
            if (a == 1) return a;
            else return a * a;
        }
        return 0;
    }
}
