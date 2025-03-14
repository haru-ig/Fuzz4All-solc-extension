pragma solidity ^0.8.0;
contract Comp4 {
    uint public _a;
    constructor(uint32 _b) {
        _a = _b + 1;
    }
   modifier notZero() {if (_a!= 0) {return;}}
   function increase() public notZero{
        _a += 2;
   }
}
