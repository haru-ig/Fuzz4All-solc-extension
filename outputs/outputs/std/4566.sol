pragma solidity ^0.8.0;
contract MutatedAppliesMutated {
    uint public a;
    event MyEvent(uint _a);
    constructor() {
        a = 32;
        emit MyEvent(a);
    }
    function mod_2(uint _x) public pure returns(uint) {
        return _x % 2;
    }
    function add3(uint _x) public  returns(uint) {
        return  _x + 3;
    }
}
