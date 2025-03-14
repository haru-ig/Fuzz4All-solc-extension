pragma solidity ^0.8.0;
contract Mod_128_bug {
    uint result;
    function mod_128(uint a) public returns (uint) {
        uint res = a;
        return (res / 1818181818);
    }
}
contract Mod_130_bug {
    uint result;
    function mod_130(uint a) public returns (uint) {
        uint res = a;

        return a - res;
    }
}
