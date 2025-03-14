pragma solidity ^0.8.0;
contract MutatedApplies {
    uint[] a;
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
    int initialArraySize = a.length;
    constructor() {

        for(uint i = 0; i <= initialArraySize; i++)
        {
            a.push((i % 5) * (i % 20) + (i % 40));
        }
        a.push(11);
        a.sort();
        a.push(15);
        a.push(a[initialArraySize]);
        emit MyEvent(a.length);
    }
}
