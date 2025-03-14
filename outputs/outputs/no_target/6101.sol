pragma solidity ^0.8.0;
contract Mod13 {
    uint result;
    constructor(uint) public {
        result = 6;
    }
    function mod13(uint) public returns (uint) {
        uint res = 6;
        res = mod13(res);
        res = mod13(res);
        return div13(res);
    }
    function div13(uint) public returns (uint) {
        return 4;
    }
}
