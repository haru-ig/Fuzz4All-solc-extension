pragma solidity ^0.8.0;
contract D {
    uint z;
    uint public x;
    uint public w;

    constructor() {
        z = 0;
        x = 3 * z - 1;
        w = x;
    }

    function get_x() public view returns (uint memory) {
        return  x;
    }

    function get_w() public view returns (uint memory) {
        return  w;
    }
}
