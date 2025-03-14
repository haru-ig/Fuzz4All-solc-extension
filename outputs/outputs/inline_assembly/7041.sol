pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv {
constructor () {
Counter= 0;
}
    function sub_( ) public {
        Counter--;
    }
    function test( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
    }
}
contract OptimizelyExample101SemialgebraicEquiv {
    uint public Counter;
    uint public otherCounter;
    uint public testValue;
    constructor() {
        otherCounter= 0;
    }
    function sub_( ) public {
        Counter--;
    }
    function test_( ) public {
        Counter++;
        if (isCalled) {
            Counter
