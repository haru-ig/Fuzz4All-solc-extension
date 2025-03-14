pragma solidity ^0.8.0;
contract Mod_1_bug {
    uint result;
    function mod_1(uint a) public returns (uint) {
        uint res = 65224;
        if (a == 0) return a;
        else return (res % 224) - 224;
    }
}
