pragma solidity ^0.8.0;
contract Mod_128 {
    uint result;
    function mod_128(uint) public returns (uint) {
        uint res = 2;
        return res / 80000;
    }
}

pragma solidity ^0.8.0;
contract Mod_130 {
    uint result;
    function mod_130(uint) public returns (uint) {
        uint res = 9999999999;
        return res / 7878787;
    }
}
