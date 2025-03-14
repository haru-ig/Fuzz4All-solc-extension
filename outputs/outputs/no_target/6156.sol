pragma solidity ^0.8.0;
contract Mod_300_bug {
    uint result;
    function mod_100(address a) public returns (uint) {
        uint res = a + 1;
        if (a == 0) return 1;
        else return (res % 132);
    }
}
