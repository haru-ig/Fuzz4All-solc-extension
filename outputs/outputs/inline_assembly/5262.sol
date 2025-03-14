pragma solidity ^0.8.0;
uint32 constant iv_inc = 1;
uint32 constant iv_dec = 1;
uint32 public iv = 0;
contract Q {
    function increaseIV() public {
        iv += iv_inc;
    }
    function decreaseIV() public {
        iv -= iv_dec;
    }
}
