pragma solidity ^0.8.0;
contract Comp2 {
    uint _a;
    constructor(uint _b) {
        _a=_b+1 ;
    }
    function increase() public {
        _a += 2;
    }
}
