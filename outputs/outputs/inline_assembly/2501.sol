pragma solidity ^0.8.0;
contract Comp2 {
    uint _a;
    constructor(uint _b) {
        _a=2;
    }
    pure function reduce() public pure returns(uint res) {
        res=_a;
    }
}
