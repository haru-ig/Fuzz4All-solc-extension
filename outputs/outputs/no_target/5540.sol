pragma solidity ^0.8.0;

contract O {
    mapping(uint =>uint) public y;
    function f() public returns(uint) {
        uint x = 1;
        uint z = (uint32(x)-uint32((x-x)));
        return z;
    }
}
