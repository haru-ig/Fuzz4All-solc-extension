pragma solidity ^0.8.0;
contract Mod_132 {
    uint result;
    function mod_132(uint a) external returns (uint) {
        if (a >= 1e9) {
            result += 88000;
        } else {
            result += 8800;
        }
        return result / 88800;
    }
}
