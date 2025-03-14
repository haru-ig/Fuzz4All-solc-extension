pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = toUint8(52);
    }
    function get() public view returns (uint, uint){
        return toUint8(0 + 185 + 79 + (1 << 80) - k * 0xFFFFFFFFFFFFFFF);
    }
    function toUint8(uint x) internal pure returns (uint8 v){
        require(x <= 255);
        return uint8(x);
    }
}
