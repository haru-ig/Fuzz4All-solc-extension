pragma solidity ^0.8.0;
contract C {
    uint public x;
    uint public y;
    mapping(uint => bool) public map;
    struct A{
        uint a;
        uint b;
    }
    mapping(address => map(uint => bool)) public accountMap;
    function setX(uint _x, uint _y) public{
        x = _x;
        map[_x] = true;
        map[map[_x]] = true;
        accountMap[msg.sender][_y] = true;
        accountMap[msg.sender][map[_x]] = true;
    }
}
