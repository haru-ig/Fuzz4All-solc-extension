pragma solidity ^0.8.0;
library LibY{
    uint256 public constant a = 10;
    uint256 public constant b = 60;
    function f() public returns(uint256){
        uint256 c = a + b;
        c = 2 * c + 200;
        return c - b - (b + a/3)*2;
    }
}
contract NewY {
    using LibY for LibY.LibY;
    function b1() public {
        LibY.LibY memory l = LibY.LibY(0) ;
        new NewY {
            y:l.f()
        }.n(4);
    }
}
