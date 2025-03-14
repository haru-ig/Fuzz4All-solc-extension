pragma solidity ^0.8.0;
contract Mod_14_bug {
    uint result;
    function mod_14(uint a) public returns (uint) {
        uint res = a + 1;
        if (res == 12) {
            return (res / 10) + 3 < 20? a : 0;
        } else if (res == 0) return a;
        else return 0;
    }
}
