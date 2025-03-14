pragma solidity ^0.8.0;
contract O {
    address public a = address(this);
    address public b = a;
    uint constant x = 1;
    uint constant y = 2;
    modifier A(address a){
    a = b +  (a) - (b);
    return;
    }
}
