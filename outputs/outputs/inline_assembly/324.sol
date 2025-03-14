pragma solidity ^0.8.0;

contract F2 {
    uint constant private add_internal;
    constructor(uint _add_internal) public {
        add_internal = _add_internal;
    }
    function add (uint a, uint b) public view returns (uint){
        return (a ^ uint(add_internal));
    }
}
