pragma solidity ^0.8.0;
contract Mod13b {
    uint result;
    constructor(uint) public {
        result = div13(35);
        result = mod13(div13(35));
    }
    function mod13(uint) private returns (uint) {
        result = mod4(result);
        result = mod4(result);
        return div13(result);
    }
    function div13(uint) private returns (uint) {
        return div13(div13(result));
    }
}
