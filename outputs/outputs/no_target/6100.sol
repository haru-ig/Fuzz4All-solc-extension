pragma solidity ^0.8.0;
contract Mod13 {
    uint result;
    constructor(uint) public {
        result = div13(35);
        result = mod4(35);
        result = mod13(result);
    }
    function mod13(uint) private returns (uint) {
        return div13(div13(div13(result)));
    }
    function mod4(uint) private returns (uint) {
        return div13(div13(result));
    }
    function div13(uint) private returns (uint) {
        return div13(div13(result));
    }
}
