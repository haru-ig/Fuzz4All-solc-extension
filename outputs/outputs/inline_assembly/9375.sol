pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function g() public returns (int,uint) {
        (int x, uint y) = (d, r);
        return (x, y);
    }
}
