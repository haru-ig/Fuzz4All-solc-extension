pragma solidity ^0.8.0;
contract Mod13 {
    uint result;
    constructor(uint) public {}
    function div13(uint) public returns (uint) {
        return 4;
    }
    function mod13(uint) public returns (uint) {
        uint res;
        assembly {
            res := div13(_mod13(0, 6))
        }
        return res;
    }
}
