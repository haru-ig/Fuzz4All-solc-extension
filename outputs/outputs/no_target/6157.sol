pragma solidity ^0.8.0;
contract Mod_0426_bug {
    uint result;
    function mod_0426(uint a) public returns (uint) {
        uint res = a;
        if (a == 0) return a;
        else try {
            res = res + mod_100(a);
        }
        catch {
            res = res + 1;
        }
        return res % 10;
    }
}
