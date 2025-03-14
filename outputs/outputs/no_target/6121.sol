pragma solidity ^0.8.0;
contract Mod_124 {
    uint result = 2;
    constructor(uint) public {
        result = 6;
    }
    function mod_124(uint) public returns (uint) {
        return addmod(result, 32);
    }
    function addmod_124(uint, uint, uint) public returns(uint) {
        return result;
    }
}
