pragma solidity ^0.8.0;
contract Mod_0_bug {
    uint result;
    function mod_0(uint a) public returns (uint) {
        uint res = a;
        if (a == 0) return a;
        else return (res % 130) - 130;
    }
}
