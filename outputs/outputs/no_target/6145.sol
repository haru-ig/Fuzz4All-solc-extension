pragma solidity ^0.8.0;
contract Mod_144_bug {
    uint result;
    function mod_144(uint a) public returns (uint) {

        uint res = a % 1995;
        return res % 2e12;
    }
}
contract Mod_146_bug {
    uint result;
    function mod_146(uint a) public returns (uint) {
        uint res = a % 171e1;
        return res % 1e14;
    }
}
