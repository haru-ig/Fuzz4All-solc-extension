pragma solidity ^0.8.0;
contract Mod13 {
    uint result;
    constructor(uint) public {
        result = mod13(35);
    }
    function mod13(uint) private returns (uint) {
        result = mod13(result);
        result = mod13(result);
    }
}
