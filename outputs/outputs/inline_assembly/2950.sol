pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping (uint => uint) mapping2;
    function setX(uint _x) public {
        x = _x;
        mapping2[x] = _x;
    }
}
