pragma solidity ^0.8.0;
contract Mod2 {
    uint result;
    constructor(uint) public {
        result = mod2(35);
    }
    function mod2(uint) private returns(uint) {
        result = mod2(result);
        result = mod2(result);
    }
    function get() public returns(uint) {
        return result;
    }
}
