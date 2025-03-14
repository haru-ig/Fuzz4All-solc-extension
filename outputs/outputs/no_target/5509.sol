pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        unchecked {
            a = this.max(0, 1, 0, 1);
        }
        uint b;
        b = y[10];
    }
}
