pragma solidity ^0.8.0;
contract MutatedApplies {
    uint public a;
    event MyEvent(uint _a);
    constructor() {
        a = 32;
        emit MyEvent(a);
    }
    function mod_10(uint _x) public pure returns(uint) {
        return _x % 10;
    }
    function mod5(uint _x) public pure returns(uint) {
        return _x % 5;
    }
    function mod2(uint _x) public pure returns(uint) {
        return _x % 2;
    }
    function f(uint _x) public pure returns(uint) {
        return _x % 15;
    }
    function lnot(uint _x) public pure returns(uint) {
       return ~_x;
    }
    function add3_1(uint _x) public  returns(uint) {
        return  _x + 3;
    }
    function add3_2(uint _x) public  returns(uint) {
        return (_x + 3)%4;
    }
	}
