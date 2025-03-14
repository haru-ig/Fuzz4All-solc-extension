pragma solidity ^0.8.0;
contract Example {
    mapping(uint => uint) public m;
    uint x = 1;
    uint y = 2;
    function add(uint _x, uint _y) public {
        x = _x ** 5;
        y = _y + x;
    }
}
