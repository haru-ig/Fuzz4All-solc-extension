pragma solidity ^0.8.0;
contract Mod_12_bug {
    uint result;
    function mod_12(uint a) public returns (uint) {
        uint res = a + 1;
        if (res == 12) {
            return (res / 10) + 3 < 20? a : 0;
        } else if (a == 0) return a;
        else return 0;
    }
}
