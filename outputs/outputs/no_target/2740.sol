pragma solidity ^0.8.0;

contract sn6097 {
    uint public x;
    constructor() { x = 190; }
    function mutate(uint _y) public {
        x = 480;
        uint _z = 999;
        x = x^_y;
        x = x&_z;
        x = x|_y;
        x = x^_z;
        x = x<<_y;
        x = x>>_z;
    }
}
