pragma solidity ^0.8.0;
contract O {
    mapping(address=>uint) public y;
    function f() public returns (uint) {
        uint x = 1;
        uint z = (x-(x-x));
        uint y = (3-1)-z;
        y = 3-(2-1)-(1-1);
        y = 2*(2-1)-z;
        x = 2-(2-1)-2;
        return y;
    }
}
