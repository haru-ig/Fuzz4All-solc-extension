pragma solidity ^0.8.0;
contract Mutate {
    Mutate78 private m_;
    constructor(uint[] memory x, uint y) public {
        m_ = new Mutate78();
        for(uint i=0;i<x.length; i++){
            m_.modify(x[i]);
        }
        m_.getY();
    }
}
