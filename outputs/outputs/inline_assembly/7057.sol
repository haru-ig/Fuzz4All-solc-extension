pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample111SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function add_(uint256 value_, uint256 index_) public {
        C(1, value_, add(index_));
    }
    function sub_(uint256 value_, uint256 index_) public {
        Counter--;
        for (uint256 i__ = index_; i__ < value_; i__++) {
            Counter++;
        }
    }
    function add_(uint256 value_) public {
        Counter += value_;
    }
    function remove_(uint256 value_, uint256 index_) public {
        while (index_ > value_) {
            Counter--;
