pragma solidity ^0.8.0;
contract O {
    struct F {
    function g() public pure returns (uint);
    uint constant z = 71;
    }
    uint constant x = 1;
    uint constant y = 2;
    F c;

    function g() public pure {}
    function h() public pure returns (uint){
        return c.z;
    }
    function b() public view returns (uint){
        c.z = 25;
        return c.z;
    }
    function c() public view returns (uint){
        F local;
        return c.z;
    }
    function z() public pure returns (uint, uint){
        F local;
        local.z = 1;
        return local.z, local.z;
    }
    function e() public pure returns (uint, uint){
        F local;
        F local2;
        local.z = 1;
        return c.z, c.z;
    }
    function h(uint c) public pure returns (uint, uint){
        local.z = 1;
        local2.z = 15;
        return  c, local.z;
    }
    function b(uint b) public pure returns (uint, uint){
        local2.z = 87;
        return b, local2.z;
    }
}
