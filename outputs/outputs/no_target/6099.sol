pragma solidity ^0.8.0;
contract Mod13 {
    uint result;
    constructor(uint) public {
        result = mod4(35);
    }
    function mod13(uint) private returns (uint) {
        result = div13(35);
        result = mod13(result);
        return result;
    }
    function mod4(uint) private returns (uint) {
        result = mod4(result);
        result = mod4(result);
        result = div13(result);
        return mod13(result);
    }
    function div13(uint) private returns (uint) {
        return div13(div13(div13(result)));
    }
}
