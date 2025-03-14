pragma solidity ^0.8.0;
contract MutatedApplies {
    function m(uint _a) public pure returns(uint) {
        return _a%2;
    }
    uint public a;
    event MyEvent(uint _a);
    constructor() {
        a = 32;
        emit MyEvent(a);
    }
    function setA(uint _a) public {
        a = _a;
        emit MyEvent(a);
    }
    function f() public pure returns(uint) {
        return a%6;
    }
}
