pragma solidity ^0.8.0;
contract Mod84 {
    uint result;
    constructor(uint) public {
        result = mod84(35);
    }
    function mod84(uint) private returns(uint) {
        result = mod84(result);
        result = mod84(result);
    }
    function get() public returns(uint) {
        return result;
    }
}
