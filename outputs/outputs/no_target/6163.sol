pragma solidity ^0.8.0;
contract Mod_13_bug {
    uint result;
    function mod_13(uint a) public returns (uint) {
        uint res = a + 1;
        if (res == 13) {
            return a == 0? 3 : res;
        } return 0;
    }
}
