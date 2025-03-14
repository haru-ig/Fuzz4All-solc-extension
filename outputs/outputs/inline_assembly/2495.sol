pragma solidity ^0.8.0;
contract Comp3 {

    uint _a;
    uint _b;
    uint _c;
    constructor(uint _a) {
        _a+=_a;
    }
    function increase() public {
        _b+=_a;
        _c += _b;
    }
}
