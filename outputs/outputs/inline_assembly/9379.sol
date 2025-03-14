pragma solidity ^0.8.0;
contract B {
    int constant d = 10;
    uint constant r = 10;
    function h() public returns (int,uint) {
        (int x_, uint y_) = (r, d);
        return (x_,y_);
    }
}
