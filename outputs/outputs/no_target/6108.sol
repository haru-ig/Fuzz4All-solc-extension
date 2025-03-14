pragma solidity ^0.8.0;
contract Mod13_1 {
    uint result;
    constructor(uint) public {
        result = 6;
    }
    function mod13(uint) public returns (uint) {
        uint res = 6;
        res = mod13(res);
        return mod13(res);
    }
    function mod13(uint) public returns (uint) {
        uint res = 6;
        res = div(res);
        return mod13(res);
    }
    function div(uint) public returns (uint) {
        return 4;
    }
}
