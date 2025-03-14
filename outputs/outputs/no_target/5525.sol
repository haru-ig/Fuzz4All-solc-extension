pragma solidity ^0.8.0;
contract O {
    mapping(uint=>uint) public y;
    function f() public returns (uint) {
        uint x = 11 ether;
        return (x/ (x-x));
    }
}
