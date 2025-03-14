pragma solidity ^0.8.0;
contract MutatedApplies {
    uint public a;
    function myFunction_1() public pure returns(uint) {
        return 3;
    }
    function myFunction_2() public pure returns(uint) {
        return 15;
    }
    function myFunction_3() public pure returns(uint) {
        return 11;
    }
    event MyEvent(uint _a);
    constructor() {
        a = myFunction_1();
        emit MyEvent(a);
    }
}
