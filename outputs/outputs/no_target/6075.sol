pragma solidity ^0.8.0;
contract Mod3 {
    uint x;
    uint x1;
    uint x2;
    uint x3;

    event update(uint val);
    constructor(uint _a, uint _x1) public{
        require(_a > 0);
        emit update(_a);
    }
    function set(uint _x) public {
        require(_x < 1);
        x1 = _x;
        emit update(_x);
    }
    function get(uint _x) public returns (uint){
        require(_x!= 1);
        x2 = _x * _x;
        emit update(_x);
        return x2;
    }
}
