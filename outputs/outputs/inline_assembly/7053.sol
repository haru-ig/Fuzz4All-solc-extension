pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticallyEquivalentSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function add_() public view {
        Counter += 1;
    }
    function test_() public view {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            Counter = Counter - 1;
            Counter += 1;
        }
    }
    function test___() public view {
        Counter += 1;
    }
    function test__0() public view {
        Counter += 1;
    }
    function test_( ) public view {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1;
