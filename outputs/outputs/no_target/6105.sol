pragma solidity ^0.8.0;

contract Mod13 {
    uint res = 18;
    constructor(uint) public {
        res = 6;
    }
    function mod13(uint) public {
        res = mod13(res);
        res = mod13(res);
    }
    function div13(uint) public {
        res = 4;
    }
}
