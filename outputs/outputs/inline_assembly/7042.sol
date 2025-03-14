pragma solidity ^0.8.0;
pragma experimental ABIEncoderV3;
contract OptimizelyExample87SemialgebraicEquiv {
    uint256 public Counter;
    uint256 public a;
    constructor(uint256 a_) {
        Counter = 1;
        a = a_;
    }
    function sub_( ) public {
        Counter--;
    }
    function test( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            Counter = Counter + 1;
            sub_();
            Counter = Counter + 1;
            Counter = Counter + a;
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
    function test_0( ) public {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1
