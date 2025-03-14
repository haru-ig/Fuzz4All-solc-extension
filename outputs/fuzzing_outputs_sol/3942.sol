pragma solidity ^0.8.0;
contract Example17 {
    address payable a;
    address payable b;
    uint x;
    uint y;
    constructor(uint y_) { a = payable; b = address(this); x = y; y = y_; }
    function f() only payable { }
    function g() public payable { }
}
