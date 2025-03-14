pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function b(int x, uint y) public returns (int,uint,bool) {
        return (x,y);
    }
}
