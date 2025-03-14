pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    modifier m() { if (a == 3) { return(a); } }
    int a = 3;
    function b(int x, uint y) public returns (int,uint) {
        return (x,y);
    }
}
