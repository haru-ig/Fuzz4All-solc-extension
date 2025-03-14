pragma solidity ^0.8.0;
contract C {
    uint public x = 0x01;
    mapping(uint => uint) public mapping;
    constructor() public {
        mapping[3] = 3;
        mapping[0x91] = 0x91;
    }
    function setX(uint _x) public {
        mapping[0x91] = _x;
    }
    function getX() public pure returns (uint) {
        mapping[0x91] memory memory2;
        mapping[0x92] storage memory s;
        return s[0x91];
    }
}
