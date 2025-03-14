pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample98SemialgebraicEquiv {
    uint256 public Counter;
    uint256 public A0;
    bool public isCalled;
    uint256 public M;
    uint256 public Q;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function test_( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
        Counter = M;
        M = M - Q;
        Q = 1;
    }
    function test__0_( ) public {
        A0 = Counter;
        Counter = Q;
        Counter
