pragma solidity ^0.8.0;
contract Mod14 {
    uint result;
    constructor(uint) public {
        result = mod14(25);
    }
    function mod14(uint) private returns(uint) {
        result = mod14(result);
        result = mod14(result);
    }
    function get() public returns(uint) {
        return result;
    }
}
