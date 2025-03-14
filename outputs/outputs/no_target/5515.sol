pragma solidity ^0.8.0;
contract O {
    mapping(uint=>uint) public y;
    function f() public returns (uint) {
        uint x = 1;
        uint z = 0;
        return (x-z - x);
    }
}
