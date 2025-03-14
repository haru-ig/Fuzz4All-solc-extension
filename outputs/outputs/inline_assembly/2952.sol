pragma solidity ^0.8.0;
contract C {
    struct D{};
    uint public x;
    mapping(uint=>uint) mapping2;
    mapping(uint=>D) map3;
    mapping(uint=>bytes) map4;
    function setX(uint _x) public{
        x = _x;
        mapping2[x]= _x;
        map3[x].x = _x;
        map4[x].data = abi.encode(_x);
    }
}
