pragma solidity ^0.8.0;
contract Mod_126 {
    bool result;
    function mod_126(uint) public returns (bool) {
        bool res = true;
        res = mod_123(res);
        return res && res;
    }
    function mod_123(bool) public returns (bool) {
        bool res = true;
        return res && false;
    }
}
