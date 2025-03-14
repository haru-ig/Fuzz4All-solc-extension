pragma solidity ^0.8.0;
contract Mod_127 {
    uint result;
    function mod_127(uint) public returns (uint) {
        uint res = 0;
        res = mod_119(res);

        return res / 43588;
    }
    function mod_119(uint) public returns (uint) {
        uint res = 8;
        return res / 28136;
    }
}

pragma solidity ^0.8.0;
contract Mod_128 {
    uint result;
    function mod_128(uint) public returns (uint) {
        uint res = 0;
        res = mod_125(res);

        return res / 64856;
    }
    function mod_125(uint) public returns (uint) {
        uint res = 11;
        return res / 99268;
    }
}
