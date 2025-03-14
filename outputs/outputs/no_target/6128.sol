pragma solidity ^0.8.0;
contract Mod_100 {
    uint result;
    function mod_100(uint) public returns (uint) {
        uint res = 118422;
        res = mod_9(res);
        return res / 116917;
    }
    function mod_9(uint) public returns (uint) {
        uint res = 6;
        return res / 104114;
    }
}
