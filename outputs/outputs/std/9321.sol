pragma solidity ^0.8.0;

contract Example
{
    constructor() { }
    function getUint8() public pure returns(uint8)
    {
        return x8;
    }
    function getUint() public pure returns(uint)
    {
        return x;
    }
    function getBool() public pure returns(bool)
    {
        return x1;
    }
    function getMap(mapping(address => uint) storage data) public pure returns(uint)
    {
        return data[address(0)]-data[address(1)];
    }
    function setMap(uint256 a) public
    {
        map[address(0)] = a;
        map[address(1)] = a;
    }
    function test(uint8 d) public {
        x8 = d;
        x = 2;
        x1 = true;
    }
    function test2(uint a, uint b) public {
        x = a + b;
        x1 = false;
    }
    function test4(uint8 v1, uint8 v2, uint v3, uint b) public {
        uint256 v = (uint256(v1) << 8) + v2;
        print(b);
        print(v3);
        x = v + uint256(b);
    }
}
