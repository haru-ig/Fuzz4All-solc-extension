pragma solidity ^0.8.0;
contract Mod_123 {
    uint result;
    function mod_125(uint min, uint max, uint num) public pure returns (uint) {
        uint res = 118422;
        res = mod_123(min, max, num);
        return res / 3748;
    }
    function mod_123(uint min, uint max, uint num) public pure returns (uint) {
        uint res = (num % max) + min;
        require(num <= max && num >= min, "Value is not between the bounds");
        return res / 129898;
    }
}
