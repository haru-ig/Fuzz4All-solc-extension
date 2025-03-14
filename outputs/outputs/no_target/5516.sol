pragma solidity ^0.8.0;
contract O {
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        a = 1;
        a = a;
        delete(y);
        a = 0;
        a = a;
    }
}
