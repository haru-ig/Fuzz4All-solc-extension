pragma solidity ^0.8.0;
contract O {
    mapping(address=>uint) public y;
    function f() public returns (uint) {
        uint x = 1;
        uint z = (x-(x-x));
        return z;
    }
}
