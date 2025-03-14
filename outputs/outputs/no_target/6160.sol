pragma solidity ^0.8.0;
contract Mod_12_bug {
    uint result;
    address a;
    function mod_12(address a) public returns (uint) {
        uint res = a + 1;
        if (res == 12) {
            return (res / 10) + 3 < 20? a : 0;
        } else if (a.toUint() == 0) return 0;
        else return 0;
    }
}
