pragma solidity ^0.8.0;
contract Equivalent_comp28 {
    uint constant constant1=2;
    uint constant constant2=100;
    uint x=0;
    uint x0=100;
    uint y=0;
    uint y0=100;
    function setX(uint _y) public returns(uint) {
        x=1*x0;
        return(x);
    }
    function setY(uint _x0) public returns(uint) {
        if (x==0 && _x0>y0) {
            x=2*x0;
        }
        else {
            x=3*x0;
        }
        return(x);
    }
}
