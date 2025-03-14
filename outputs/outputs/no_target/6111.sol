pragma solidity ^0.8.0;
contract Mod_123 {
    function mod_123(uint) public returns (uint) {
        uint res = 6;
        res = mod_123(mod_123(res));
        res = mod_123(res);
        return div_123(res);
    }
    function div_123(uint) public returns (uint) {
        return 4;
    }
}

pragma solidity ^0.8.0;
contract Mod_123 {
    uint result;
    constructor(uint) public {
        result = 6;
    }
    function mod_123(uint) public returns (uint) {
        uint res = 6;
        res = mod_123(mod_123(res));
        return res;
    }
}
