pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint=>uint) public _x;
    constructor() {
        _x[0] = 6;
        _x[1] = 42;
        _x[2] = 0;
        _x[3] = 0;
    }
    function set(uint a, uint b) public {
        _x[a] = b;
    }
    function get(uint a) public view returns(uint) {
        return _x[a];
    }
}
