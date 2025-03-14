pragma solidity ^0.8.0;
contract Mod_137_bug {
    uint result;
    function mod_137(uint a) public returns (uint) {
        uint res = a;
        if (a == 0) return a;
        else return ((a - (130 * 130)));
    }
}
